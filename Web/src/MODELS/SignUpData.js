import React from "react";
import PropTypes from "prop-types";

import "bootstrap/dist/css/bootstrap.min.css";
import "shards-ui/dist/css/shards.min.css";

import { Card } from "shards-react";

class SignUpData extends React.Component {
  render() {
    const { name, cpf, email, isLoading } = this.props;

    const userDetails = (
      <div>
        <h4 className="mb-0">{name}</h4>
        <span className="text-muted">{email}</span>
      </div>
    );

    const loadingMessage = <span className="d-flex m-auto">Loading...</span>;

    return (
      <Card
        className="mx-auto mt-4 text-center p-5"
        style={{ maxWidth: "300px", minHeight: "250px" }}
      >
        {isLoading ? loadingMessage : userDetails}
      </Card>
    );
  }
}

SignUpData.propTypes = {
  name: PropTypes.string,
  cpf: PropTypes.string,
  email: PropTypes.string,
  isLoading: PropTypes.bool
};

export default SignUpData;