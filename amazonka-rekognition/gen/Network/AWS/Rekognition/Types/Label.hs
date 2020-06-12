{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Label
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Rekognition.Types.Label where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Structure containing details about the detected label, including name, and level of confidence.
--
--
--
-- /See:/ 'label' smart constructor.
data Label = Label'{_lConfidence :: !(Maybe Double),
                    _lName :: !(Maybe Text)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lConfidence' - Level of confidence.
--
-- * 'lName' - The name (label) of the object.
label
    :: Label
label
  = Label'{_lConfidence = Nothing, _lName = Nothing}

-- | Level of confidence.
lConfidence :: Lens' Label (Maybe Double)
lConfidence = lens _lConfidence (\ s a -> s{_lConfidence = a})

-- | The name (label) of the object.
lName :: Lens' Label (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

instance FromJSON Label where
        parseJSON
          = withObject "Label"
              (\ x ->
                 Label' <$> (x .:? "Confidence") <*> (x .:? "Name"))

instance Hashable Label where

instance NFData Label where
