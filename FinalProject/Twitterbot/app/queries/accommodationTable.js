import mysql from "mysql";
import getPermanentAccomodationModel, {
  checkTweetType,
  getTemporaryAccomodationModel,
  accommodationType,
} from "../utils/regexUtils.js";
import pool from "../utils/connect.js";

export function insertAccommodations(tweets) {
  let permanentAccommodationCount = 0;
  let temporaryAccommodationCount = 0;
  console.log("inserting accommodations");
  try {
    console.log(tweets);
    tweets.forEach((tweet, index) => {
      if (
        checkTweetType(tweet.text) === accommodationType.PERMANENT_ACCOMMODATION
      ) {
        const permanentTweetModel = getPermanentAccomodationModel(tweet.text);
        console.log("inserting permanent accomodations");
        permanentAccommodationCount++;
        console.log(index);
        insertPermanentAccomodationsQuery(permanentTweetModel, tweet.id);
      } else if (
        checkTweetType(tweet.text) === accommodationType.TEMPORARY_ACCOMODATION
      ) {
        console.log(tweet.text);
        const temporaryTweetModel = getTemporaryAccomodationModel(tweet.text);
        console.log("inserting temporary accomodations");
        temporaryAccommodationCount++;
        console.log(index);
        insertTemporaryAccomodationsQuery(temporaryTweetModel, tweet.id);
      } else {
        console.log("accomodation request");
      }
    });
  } catch (error) {
    console.log(error);
  }
  console.log(
    "permanent accommodations",
    permanentAccommodationCount,
    "temporary accommodations",
    temporaryAccommodationCount
  );
}

function insertPermanentAccomodationsQuery(tweetObjectModel, tweetId) {
  const {
    availability: { startDate, endDate },
    location,
    apartment: { bed, bath },
    address,
    gender,
    roomType,
    vacancy: { hall, room },
    rent,
  } = tweetObjectModel;

  console.log(
    startDate,
    endDate,
    location,
    bed,
    bath,
    address,
    gender,
    roomType,
    hall,
    room,
    rent
  );

  console.log("\n");

  let insertQuery =
    "INSERT IGNORE INTO ?? (??,??, ??, ??, ??, ??, ??,??, ??, ??, ??, ??) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "PermanentAccommodation",
    "rent",
    "location",
    "bed",
    "bath",
    "room_type",
    "tweet_id",
    "gender",
    "address",
    "available_start",
    "available_end",
    "hall",
    "bedroom",
    rent,
    location,
    bed,
    bath,
    roomType,
    tweetId,
    gender,
    address,
    startDate,
    endDate,
    hall,
    room,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("permanent Accommodations inserted");
    console.log(response.insertId);
  });
}

function insertTemporaryAccomodationsQuery(temporaryTweetObjectModel, tweetId) {
  const {
    availability: { startDate, endDate },
    location,
    address,
    roomType,
    gender,
    rent,
  } = temporaryTweetObjectModel;

  console.log(startDate, endDate, location, address, gender, roomType, rent);

  console.log("\n");

  let insertQuery =
    "INSERT IGNORE INTO ?? (??,??, ??, ??, ??, ??, ??,?? ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
  let query = mysql.format(insertQuery, [
    "TemporaryAccomodation",
    "rent",
    "location",
    "room_type",
    "tweet_id",
    "gender",
    "address",
    "available_start",
    "available_end",
    rent,
    location,
    roomType,
    tweetId,
    gender,
    address,
    startDate,
    endDate,
  ]);
  pool.query(query, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("temporary Accommodations inserted");
    console.log(response.insertId);
  });
}

export function deletePermanenetAccommodation() {
  console.log("Deleting permanent accommodations");
  let deleteQuery = "DELETE FROM PermanentAccommodation";
  pool.query(deleteQuery, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("permanent accommodations deleted");
    console.log(response.insertId);
  });
}

export function deleteTemporaryAccommodations() {
  console.log("Deleting temporary accommodations");
  let deleteQuery = "DELETE FROM TemporaryAccomodation";
  pool.query(deleteQuery, (err, response) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log("delete temporaryAccomodations deleted");
    console.log(response.insertId);
  });
}
