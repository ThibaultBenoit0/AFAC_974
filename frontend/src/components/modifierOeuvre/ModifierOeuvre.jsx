import { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import axios from "axios";
import ModifierOeuvreForm from "./ModifierOeuvreForm";

function ModifierOeuvre() {
  const [isOeuvreUpdated, setIsOeuvreUpdated] = useState(false);
  const [imageFile, setImageFile] = useState();
  const [image, setImage] = useState("");
  const [formError, setFormError] = useState(false);
  const getImage = (e) => {
    setImageFile(e.target.files[0]);
  };

  const [formData, setFormData] = useState({
    ref_archives: "",
    titre: "",
    auteur: "",
    img: "",
    date_creation: "",
    format: "",
    technique: "",
    lien_page_auteur: "",
    lien_article: "",
    categorie: "",
    details: "",
    resume: "",
  });
  const navigate = useNavigate();

  const { id } = useParams();

  useEffect(() => {
    fetch(`${import.meta.env.VITE_BACKEND_URL}/oeuvres/${id}`)
      .then((response) => response.json())
      .then((res) => {
        setFormData({
          ref_archives: res.ref_archives,
          titre: res.titre,
          auteur: res.auteur,
          date_creation: res.date_creation,
          format: res.format,
          technique: res.technique,
          lien_page_auteur: res.lien_page_auteur,
          lien_article: res.lien_article,
          categorie: res.categorie,
          details: res.details,
          resume: res.resume,
        });
        setImage(res.img || "");
      })
      .catch((err) =>
        console.error(
          "Une erreur est survenue dans la récupération des données",
          err
        )
      );
  }, []);

  const handleChange = (e) => {
    setFormData((previousValue) => ({
      ...previousValue,
      [e.target.name]: e.target.value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    // Vérification de la validité des champs requis
    const form = document.getElementById("id_form_modifierOeuvre");
    if (!form.checkValidity()) {
      setFormError(true);
      return;
    }

    const newData = new FormData(); // create new form object
    newData.append("ref_archives", formData.ref_archives);
    newData.append("titre", formData.titre);
    newData.append("auteur", formData.auteur);
    newData.append("date_creation", formData.date_creation);
    newData.append("format", formData.format);
    newData.append("technique", formData.technique);
    newData.append("lien_page_auteur", formData.lien_page_auteur);
    newData.append("lien_article", formData.lien_article);
    newData.append("categorie", formData.categorie);
    newData.append("details", formData.details);
    newData.append("resume", formData.resume);
    //
    newData.append("updateFile", imageFile);

    axios
      .put(`${import.meta.env.VITE_BACKEND_URL}/oeuvres/${id}`, newData)
      .then((response) => {
        const { data } = response;
        setImage(data.url);
      })
      .then(() => {
        setIsOeuvreUpdated(true);
        setTimeout(() => {
          navigate("/admin");
        }, 4000);
      })
      .catch((err) => {
        console.error(err);
      });
  };

  const modifierReturnHandler = () => {
    navigate(-1);
  };

  return (
    <ul className="modifierOeuvre">
      {!isOeuvreUpdated && (
        <>
          <button
            className="return-button"
            type="button"
            onClick={modifierReturnHandler}
          >
            Retour
          </button>
          <li className="modifierOeuvre_title">
            <h2>Modifier une oeuvre</h2>
          </li>

          <li className="modifierOeuvre_form">
            <ModifierOeuvreForm
              handleChange={handleChange}
              handleSubmit={handleSubmit}
              formData={formData}
              setFormData={setFormData}
              getImage={getImage}
              image={image}
              formError={formError}
            />
          </li>
        </>
      )}
      {isOeuvreUpdated && (
        <li className="modifierOeuvre_message_success">
          <div className="progress-bar" />
          <p>L'oeuvre a bien été modifiée </p>
        </li>
      )}
    </ul>
  );
}

export default ModifierOeuvre;