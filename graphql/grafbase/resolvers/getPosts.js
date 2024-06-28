import fetch from "node-fetch";

export default async function Resolver() {
  const response = await fetch("https://jsonplaceholder.typicode.com/posts");
  const posts = await response.json();
  return posts.map((post) => ({
    id: post.id,
    userId: post.userId,
    title: post.title,
    body: post.body,
  }));
}
