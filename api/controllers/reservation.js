import {db} from '../conect.js'
import jwt from 'jsonwebtoken'


function checkavailibility(){
    
}


export const checkReservation = (req,res)=>{

    const token = req.cookies.accessToken;
    if (!token) return res.status(401).json("Not Logged in!");
  
    jwt.verify(token, "secretkey", (err, userInfo) => {
      if (err) return res.status(403).json("Token is not valid");
  
      const q = `
                                SELECT 
                    i.productId, 
                    i.name, 
                    i.qty AS totalQuantity,
                    COALESCE(SUM(r.qty), 0) AS reservedQuantity,
                    (i.qty - COALESCE(SUM(r.qty), 0)) AS availableQuantity
                FROM 
                    products i
                LEFT JOIN 
                    reservation r ON i.productId = r.productId 
                            AND (
                                r.startDate <= ? AND r.endDate >= ?
                            )
                WHERE 
                    i.productId = ?
                GROUP BY 
                    i.productId;`;
        
          db.query(q,[req.body.end,req.body.start,req.body.itemId], (err, data) => {
          if (err) return res.status(500).json(err);
          return res.status(200).json(data);
          });
      });
  };

