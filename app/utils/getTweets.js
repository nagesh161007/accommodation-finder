import axios from "axios";
import * as dotenv from "dotenv";
dotenv.config();

console.log(process.env.BEARER_TOKEN);
const TWEET_API_URL =
  "https://api.twitter.com/2/users/1588329126460592130/mentions?max_results=100&expansions=attachments.poll_ids,attachments.media_keys,author_id,geo.place_id,referenced_tweets.id,entities.mentions.username,referenced_tweets.id.author_id&tweet.fields=attachments,author_id,created_at,entities,geo,id,lang,source,text,withheld,public_metrics&user.fields=created_at,description,entities,id,location,name,pinned_tweet_id,profile_image_url,username,verified,withheld";

var config = {
  method: "GET",
  url: TWEET_API_URL,
  headers: {
    Authorization: process.env.BEARER_TOKEN,
    Cookie:
      'guest_id=v1%3A166784719974015007; guest_id_ads=v1%3A166784719974015007; guest_id_marketing=v1%3A166784719974015007; personalization_id="v1_AwjKGCdsqpwLXZXIfMCnqA=="',
  },
};

export default async function getAccomodationUserTimeline() {
  try {
    const response = await axios(config);
    console.log("inside getAccomodationUserTimeline");
    return response?.data;
  } catch (error) {
    console.log("inside error");
    console.log(error);
  }
}

export async function getTweetObjects() {
  const response = await getAccomodationUserTimeline();
  const {
    includes: { users },
  } = response;
  const { data: tweets } = response;

  return { tweets, users };
}
