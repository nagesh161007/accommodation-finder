import { getTweetObjects } from "./utils/getTweets.js";
import {
  insertAccommodations,
  deletePermanenetAccommodation,
  deleteTemporaryAccommodations,
} from "./queries/accommodationTable.js";
import { insertMentions, deleteMentions } from "./queries/mentionTable.js";
import { insertTweetMetric, deleteMetrics } from "./queries/metricsTable.js";
import { insertMedia } from "./queries/mediaTable.js";
import { insertUsers } from "./queries/twitterUserTable.js";
import { insertTweets } from "./queries/tweetsTable.js";
import { insertHashTag, deleteHashTag } from "./queries/hashTagTable.js";

async function start() {
  const tweetObjects = await getTweetObjects();
  const { users, tweets } = tweetObjects;
  insertUsers(users);
  insertTweets(tweets);
  insertMedia(tweets);
  deleteMentions();
  deleteMetrics();
  deleteHashTag();
  deletePermanenetAccommodation();
  deleteTemporaryAccommodations();
  insertAccommodations(tweets);
  insertTweetMetric(tweets);
  insertMentions(tweets);
  insertHashTag(tweets);
}

start();
