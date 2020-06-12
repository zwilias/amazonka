{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointLocation
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.EndpointLocation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Endpoint location data
--
-- /See:/ 'endpointLocation' smart constructor.
data EndpointLocation = EndpointLocation'{_elPostalCode
                                          :: !(Maybe Text),
                                          _elLatitude :: !(Maybe Double),
                                          _elCountry :: !(Maybe Text),
                                          _elCity :: !(Maybe Text),
                                          _elRegion :: !(Maybe Text),
                                          _elLongitude :: !(Maybe Double)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elPostalCode' - The postal code or zip code of the endpoint.
--
-- * 'elLatitude' - The latitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
--
-- * 'elCountry' - Country according to ISO 3166-1 Alpha-2 codes. For example, US.
--
-- * 'elCity' - The city where the endpoint is located.
--
-- * 'elRegion' - The region of the endpoint location. For example, corresponds to a state in US.
--
-- * 'elLongitude' - The longitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
endpointLocation
    :: EndpointLocation
endpointLocation
  = EndpointLocation'{_elPostalCode = Nothing,
                      _elLatitude = Nothing, _elCountry = Nothing,
                      _elCity = Nothing, _elRegion = Nothing,
                      _elLongitude = Nothing}

-- | The postal code or zip code of the endpoint.
elPostalCode :: Lens' EndpointLocation (Maybe Text)
elPostalCode = lens _elPostalCode (\ s a -> s{_elPostalCode = a})

-- | The latitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
elLatitude :: Lens' EndpointLocation (Maybe Double)
elLatitude = lens _elLatitude (\ s a -> s{_elLatitude = a})

-- | Country according to ISO 3166-1 Alpha-2 codes. For example, US.
elCountry :: Lens' EndpointLocation (Maybe Text)
elCountry = lens _elCountry (\ s a -> s{_elCountry = a})

-- | The city where the endpoint is located.
elCity :: Lens' EndpointLocation (Maybe Text)
elCity = lens _elCity (\ s a -> s{_elCity = a})

-- | The region of the endpoint location. For example, corresponds to a state in US.
elRegion :: Lens' EndpointLocation (Maybe Text)
elRegion = lens _elRegion (\ s a -> s{_elRegion = a})

-- | The longitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
elLongitude :: Lens' EndpointLocation (Maybe Double)
elLongitude = lens _elLongitude (\ s a -> s{_elLongitude = a})

instance FromJSON EndpointLocation where
        parseJSON
          = withObject "EndpointLocation"
              (\ x ->
                 EndpointLocation' <$>
                   (x .:? "PostalCode") <*> (x .:? "Latitude") <*>
                     (x .:? "Country")
                     <*> (x .:? "City")
                     <*> (x .:? "Region")
                     <*> (x .:? "Longitude"))

instance Hashable EndpointLocation where

instance NFData EndpointLocation where

instance ToJSON EndpointLocation where
        toJSON EndpointLocation'{..}
          = object
              (catMaybes
                 [("PostalCode" .=) <$> _elPostalCode,
                  ("Latitude" .=) <$> _elLatitude,
                  ("Country" .=) <$> _elCountry,
                  ("City" .=) <$> _elCity, ("Region" .=) <$> _elRegion,
                  ("Longitude" .=) <$> _elLongitude])
