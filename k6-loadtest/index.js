import http from "k6/http";
import { sleep, check } from "k6";

export const options = {
  vus: 50,
  iterations: 1000
};

export default function () {
  const res = http.get("http://localhost:5000/generate-pdf");

  check(res, { "status was 200": (r) => r.status == 200 });

  sleep(1);
}