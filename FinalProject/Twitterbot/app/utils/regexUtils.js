function parseAvailability(tweet) {
  // 'Available: Jan 25 2023 - Dec 2023'.match(/(?<=(Available: )).*\n*/)[0]
  const availability = tweet.match(/(?<=(Available: )).*\n*/)[0];
  var startDate = new Date(
    availability.split("-")[0].trim().replace("  ", " ")
  );
  var endDate = new Date(availability.split("-")[1].trim().replace("  ", " "));
  return { startDate, endDate };
}

function parseGender(tweet) {
  // 'Gender: Male'.match(/(?<=(Gender: )).*\n*/)[0]

  return tweet.match(/(?<=(Gender: )).[^\n ]*/)
    ? tweet.match(/(?<=(Gender: )).[^\n ]*/)[0]
    : null;
}

function parseVacancy(tweet) {
  // 'Vacany: 2 hall spot and 1 bed spot'.match(/(?<=(Vacany: )).*\n*/)[0]
  var vacancy = tweet.match(/(?<=(Vacancy: )).*\n*/)[0];
  var hall = Number(vacancy.match(/([\d.]+) *hall/)[1]);
  var room = Number(vacancy.match(/([\d.]+) *bed/)[1]);
  return { hall, room };
}

function parseRoomType(tweet) {
  // 'Room: Private'.match(/(?<=(Room: )).*\n*/)[0]
  return tweet.match(/(?<=(Room: )).[^\n]*/)[0];
}

function parseAddress(tweet) {
  // 'Address: The Longwood Apartments,1575 Tremont Street,Boston,MA'.match(/(?<=(Address: )).*\n*/)[0]
  return tweet.match(/(?<=(Address: )).[^\n]*/)[0];
}

function parseRent(tweet) {
  return tweet.match(/(?<=(Rent: )).[^\n ]*/)
    ? Number(tweet.match(/(?<=(Rent: )).[^\n ]*/)[0].replace("$", ""))
    : null;
}

function parseApartment(tweet) {
  // 'Apartment: 3 Bed 1 Bath'.match(/(?<=(Apartment: )).*\n*/)[0]
  const apartment = tweet.match(/(?<=(Apartment: )).*\n*/)[0];
  const bed = Number(apartment.match(/([\d.]+) *Bed/)[1]);
  const bath = Number(apartment.match(/([\d.]+) *Bath/)[1]);
  return { bed, bath };
}

function parseLocation(tweet) {
  // 'Location: https://goo.gl/maps/LwxXMch8pC2x4btA8'.match(/(?<=(Location: )).*\n*/)[0]
  return tweet.match(/(?<=(Location: )).[^\n ]*/)[0];
}

export const accommodationType = {
  PERMANENT_ACCOMMODATION: "PERMANENT_ACCOMMODATION",
  TEMPORARY_ACCOMODATION: "TEMPORARY_ACCOMODATION",
};

export function checkTweetType(tweet) {
  if (tweet.includes("Permanent accommodation")) {
    return accommodationType.PERMANENT_ACCOMMODATION;
  } else if (tweet.includes("Temporary accommodation")) {
    return accommodationType.TEMPORARY_ACCOMODATION;
  }
  return "ACCOMDATION_REQUEST";
}

var permenent = `@AccomodFinder \n\nPermanent accommodation\nAvailable: 1 Oct 2022 - 1 Oct 2023\nGender: Boys\nVacancy: 0 hall and 1 bed\nRoom: Private\nAddress: 832 Huntington Avenue\nLocation: https://t.co/R27cAKyaHe\nRent: $550\nApartment: 3 Bed 1 Bath`;

export default function getPermanentAccomodationModel(tweet) {
  const availability = parseAvailability(tweet);
  const location = parseLocation(tweet);
  const apartment = parseApartment(tweet);
  const address = parseAddress(tweet);
  const roomType = parseRoomType(tweet);
  const gender = parseGender(tweet);
  const vacancy = parseVacancy(tweet);
  const rent = parseRent(tweet);

  return {
    availability,
    location,
    apartment,
    address,
    roomType,
    gender,
    vacancy,
    rent,
  };
}

const temp =
  "@AccomodFinder \n\n    Temporary accommodation\n    Available: 5 Dec 2022 - 10 Dec 2023\n    Gender: Mixed\n    Room: Private\n    Address: Jvue Apartments 75 Saint Alphonsus Street, Boston, MA\n    Location: https://t.co/j8OpWXFm7z\n    Rent: $590";

export function getTemporaryAccomodationModel(tweet) {
  console.log("inside getTemporaryAccomodationModel");
  const availability = parseAvailability(tweet);
  const location = parseLocation(tweet);
  const address = parseAddress(tweet);
  const roomType = parseRoomType(tweet);
  const gender = parseGender(tweet);
  const rent = parseRent(tweet);

  return {
    availability,
    location,
    address,
    roomType,
    gender,
    rent,
  };
}
