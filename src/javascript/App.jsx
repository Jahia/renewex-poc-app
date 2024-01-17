/* eslint camelcase: 0 */
import React, {useEffect, useState}  from "react";
import {getData} from "./engine";
import {Site} from "./components"
export const App = () => {

    const [sitesData, setSitesData] = useState([]);

    useEffect(() => {
        fetch("/renewex/sites", {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json',
            }
        }).then((response) => response.json())
            .then(data =>setSitesData(data))
            .catch(err=>console.error("sites fetch error :",err));


        //
        // getData("/sites")
        //     .then(data =>setSitesData(data))
        //     .catch(err=>console.error("sites fetch error :",err));
    }, []);

    return(
        <>
            <h1>Les sites</h1>
            <ul>
                {sitesData.map(site =><Site key={site.uuid} site={site}/>)}
            </ul>
        </>

    )
}