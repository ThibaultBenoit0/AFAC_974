import PropTypes from "prop-types";

function ModifierOeuvreForm({
  image,
  formData,
  handleSubmit,
  handleChange,
  formError,
}) {
  return (
    <form id="id_form_modifierOeuvre" method="POST">
      <label htmlFor="ref_archives">Ref_archives </label>
      <input
        type="text"
        placeholder="Ref_archives"
        name="ref_archives"
        onChange={(e) => handleChange(e)}
        value={formData.ref_archives || ""}
      />
      <label htmlFor="titre ">
        Titre <h6>Champs requis</h6>
      </label>
      <input
        type="text"
        placeholder="Champs requis *"
        name="titre"
        onChange={(e) => handleChange(e)}
        value={formData.titre || ""}
        required
      />
      <label htmlFor="auteur">Auteur </label>
      <input
        type="text"
        placeholder="Auteur"
        name="auteur"
        onChange={(e) => handleChange(e)}
        value={formData.auteur || ""}
      />
      <label htmlFor="date_creation">Date de création </label>
      <input
        type="text"
        placeholder="Date_creation"
        name="date_creation"
        onChange={(e) => handleChange(e)}
        value={formData.date_creation || ""}
      />
      <label htmlFor="format">Format </label>
      <input
        type="text"
        placeholder="Format"
        name="format"
        onChange={(e) => handleChange(e)}
        value={formData.format || ""}
      />
      <label htmlFor="technique">Technique utilisée </label>
      <input
        type="text"
        placeholder="Technique"
        name="technique"
        onChange={(e) => handleChange(e)}
        value={formData.technique || ""}
      />
      <label htmlFor="lien_page_auteur">Site internet de l'auteur</label>
      <input
        type="text"
        placeholder="https://www."
        name="lien_page_auteur"
        onChange={(e) => handleChange(e)}
        value={formData.lien_page_auteur || ""}
      />
      <label htmlFor="lien_article">Lien de l'article</label>
      <input
        type="text"
        placeholder="https://www."
        name="lien_article"
        onChange={(e) => handleChange(e)}
        value={formData.lien_article || ""}
      />
      <label htmlFor="categorie">
        Catégorie <h6>Champs requis</h6>
      </label>
      <input
        type="text"
        placeholder="Champs requis *"
        name="categorie"
        onChange={(e) => handleChange(e)}
        value={formData.categorie || ""}
      />
      <label htmlFor="details">
        Détails <h6>Champs requis</h6>
      </label>
      <input
        type="text"
        placeholder="Champs requis *"
        name="details"
        onChange={(e) => handleChange(e)}
        value={formData.details || ""}
        required
      />
      <label htmlFor="resume">Titre résumé</label>
      <input
        type="text"
        placeholder="Titre résumé"
        name="resume"
        onChange={(e) => handleChange(e)}
        value={formData.resume || ""}
      />

      <label htmlFor="img">Image</label>
      <img src={image} alt={image} />
      {formError && (
        <li className="modifierOeuvre_message_error">
          <p>Veuillez remplir tous les champs requis.</p>
        </li>
      )}
      <div className="modifierOeuvre-button-container">
        <button
          className="ajoutOeuvre-button"
          onClick={handleSubmit}
          type="submit"
          form="id_form_modifierOeuvre"
        >
          Modifier
        </button>
      </div>
    </form>
  );
}

export default ModifierOeuvreForm;

ModifierOeuvreForm.propTypes = {
  formData: PropTypes.shape({
    ref_archives: PropTypes.string,
    titre: PropTypes.string,
    auteur: PropTypes.string,
    img: PropTypes.string,
    date_creation: PropTypes.string,
    format: PropTypes.string,
    technique: PropTypes.string,
    lien_page_auteur: PropTypes.string,
    lien_article: PropTypes.string,
    categorie: PropTypes.string,
    details: PropTypes.string,
    resume: PropTypes.string,
  }),
  handleChange: PropTypes.func.isRequired,
  handleSubmit: PropTypes.func.isRequired,
  image: PropTypes.string.isRequired,
  formError: PropTypes.bool.isRequired,
};

ModifierOeuvreForm.defaultProps = {
  formData: null,
};
