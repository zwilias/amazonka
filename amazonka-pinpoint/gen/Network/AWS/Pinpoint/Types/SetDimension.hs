{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SetDimension
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SetDimension where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DimensionType
import Network.AWS.Prelude

-- | Dimension specification of a segment.
--
-- /See:/ 'setDimension' smart constructor.
data SetDimension = SetDimension'{_sdValues ::
                                  !(Maybe [Text]),
                                  _sdDimensionType :: !(Maybe DimensionType)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdValues' - The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
--
-- * 'sdDimensionType' - The type of dimension: INCLUSIVE - Endpoints that match the criteria are included in the segment. EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
setDimension
    :: SetDimension
setDimension
  = SetDimension'{_sdValues = Nothing,
                  _sdDimensionType = Nothing}

-- | The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
sdValues :: Lens' SetDimension [Text]
sdValues = lens _sdValues (\ s a -> s{_sdValues = a}) . _Default . _Coerce

-- | The type of dimension: INCLUSIVE - Endpoints that match the criteria are included in the segment. EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
sdDimensionType :: Lens' SetDimension (Maybe DimensionType)
sdDimensionType = lens _sdDimensionType (\ s a -> s{_sdDimensionType = a})

instance FromJSON SetDimension where
        parseJSON
          = withObject "SetDimension"
              (\ x ->
                 SetDimension' <$>
                   (x .:? "Values" .!= mempty) <*>
                     (x .:? "DimensionType"))

instance Hashable SetDimension where

instance NFData SetDimension where

instance ToJSON SetDimension where
        toJSON SetDimension'{..}
          = object
              (catMaybes
                 [("Values" .=) <$> _sdValues,
                  ("DimensionType" .=) <$> _sdDimensionType])
