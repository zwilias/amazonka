{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Gender
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.Gender where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.GenderType

-- | Gender of the face and the confidence level in the determination.
--
--
--
-- /See:/ 'gender' smart constructor.
data Gender = Gender'{_gValue :: !(Maybe GenderType),
                      _gConfidence :: !(Maybe Double)}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Gender' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue' - Gender of the face.
--
-- * 'gConfidence' - Level of confidence in the determination.
gender
    :: Gender
gender
  = Gender'{_gValue = Nothing, _gConfidence = Nothing}

-- | Gender of the face.
gValue :: Lens' Gender (Maybe GenderType)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | Level of confidence in the determination.
gConfidence :: Lens' Gender (Maybe Double)
gConfidence = lens _gConfidence (\ s a -> s{_gConfidence = a})

instance FromJSON Gender where
        parseJSON
          = withObject "Gender"
              (\ x ->
                 Gender' <$> (x .:? "Value") <*> (x .:? "Confidence"))

instance Hashable Gender where

instance NFData Gender where
