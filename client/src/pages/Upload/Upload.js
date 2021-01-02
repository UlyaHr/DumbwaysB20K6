import React, { useState } from "react";
import "./Upload.css";
import Axios from "axios";
import { useHistory } from "react-router-dom";

export default function Upload() {
  const [name, setName] = useState("");
  const [id_role, setId] = useState("");
  const [image, setImage] = useState([]);
  const [deskripsi, setDeskripsi] = useState("");
  
  let history = useHistory();

  const upload = () => {
    const formData = new FormData();
    formData.append("file", image[0]);
    formData.append("upload_preset", "vmxts37u");
    Axios.post(
      `https://api.cloudinary.com/v1_1/db8ufjm93/image/upload`,
      formData
    ).then((response) => {
      const fileName = response.data.public_id;

      Axios.post("http://localhost:3001/upload", {
        name: name,
        id_role: id_role,
        image: fileName,
        deskripsi: deskripsi,
      }).then(() => {
        history.push("/");
      });
    });
  };
  return (
    <div className="Upload">
      <h1>Add New Hero</h1>
      <div className="UploadForm">
        <input
          type="text"
          placeholder="Nama Hero"
          onChange={(event) => {
            setName(event.target.value);
          }}
        />
        <input
          type="text"
          placeholder="Hero Role ID"
          onChange={(event) => {
            setId(event.target.value);
          }}
        />
        <input
          type="text"
          placeholder="Deskripsi Hero"
          onChange={(event) => {
            setDeskripsi(event.target.value);
          }}
        />

        <input type="file" onChange={(e) => setImage(e.target.files)} />
        <button onClick={upload}>Upload</button>
      </div>
    </div>
  );
}
