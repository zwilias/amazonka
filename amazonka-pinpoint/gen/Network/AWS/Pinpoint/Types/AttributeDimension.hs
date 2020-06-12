{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AttributeDimension
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.AttributeDimension where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.AttributeType
import Network.AWS.Prelude

-- | Custom attibute dimension
--
-- /See:/ 'attributeDimension' smart constructor.
data AttributeDimension = AttributeDimension'{_adValues
                                              :: !(Maybe [Text]),
                                              _adAttributeType ::
                                              !(Maybe AttributeType)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttributeDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adValues' - The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
--
-- * 'adAttributeType' - The type of dimension: INCLUSIVE - Endpoints that match the criteria are included in the segment. EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
attributeDimension
    :: AttributeDimension
attributeDimension
  = AttributeDimension'{_adValues = Nothing,
                        _adAttributeType = Nothing}

-- | The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
adValues :: Lens' AttributeDimension [Text]
adValues = lens _adValues (\ s a -> s{_adValues = a}) . _Default . _Coerce

-- | The type of dimension: INCLUSIVE - Endpoints that match the criteria are included in the segment. EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
adAttributeType :: Lens' AttributeDimension (Maybe AttributeType)
adAttributeType = lens _adAttributeType (\ s a -> s{_adAttributeType = a})

instance FromJSON AttributeDimension where
        parseJSON
          = withObject "AttributeDimension"
              (\ x ->
                 AttributeDimension' <$>
                   (x .:? "Values" .!= mempty) <*>
                     (x .:? "AttributeType"))

instance Hashable AttributeDimension where

instance NFData AttributeDimension where

instance ToJSON AttributeDimension where
        toJSON AttributeDimension'{..}
          = object
              (catMaybes
                 [("Values" .=) <$> _adValues,
                  ("AttributeType" .=) <$> _adAttributeType])
