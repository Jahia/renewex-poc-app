/* eslint camelcase: 0 */
import React, {useEffect, useState}  from "react";
import PropTypes from 'prop-types';

export const Site = ({site}) => {

    return(
        <li>
            <h2>{site.name}</h2>
            <p>{site.description?.address}</p>
            <p>capacity : {site.capacity}</p>
        </li>

    )
}
Site.propTypes = {
    site: PropTypes.string.isRequired,
};