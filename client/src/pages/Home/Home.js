import React, { useEffect, useState } from "react";
import "./Home.css";
import { Image } from "cloudinary-react";
import Axios from "axios";

function Home() {
  const [uploads, setUploads] = useState([]);

  useEffect(() => {
    Axios.get("http://localhost:3001/upload").then((response) => {
      setUploads(response.data);
    });
  }, []);

  return (
    <div className="Home">
      {uploads.map((val, key) => {
        return (
          <div className="Post">
            <div className="Image">
              <Image cloudName="db8ufjm93" publicId={val.image} />
            </div>
            <div className="Content">
              <div className="title">
                {" "}
                {val.title} / by @{val.author}
              </div>
              <div className="description">{val.description}</div>
            </div>
          </div>
        );
      })}
    </div>
  );
}

export default Home;
