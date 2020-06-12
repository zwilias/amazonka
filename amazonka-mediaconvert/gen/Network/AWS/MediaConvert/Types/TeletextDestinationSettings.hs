{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TeletextDestinationSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.TeletextDestinationSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for Teletext caption output
--
-- /See:/ 'teletextDestinationSettings' smart constructor.
newtype TeletextDestinationSettings = TeletextDestinationSettings'{_tdsPageNumber
                                                                   ::
                                                                   Maybe Text}
                                        deriving (Eq, Read, Show, Data,
                                                  Typeable, Generic)

-- | Creates a value of 'TeletextDestinationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdsPageNumber' - Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field.
teletextDestinationSettings
    :: TeletextDestinationSettings
teletextDestinationSettings
  = TeletextDestinationSettings'{_tdsPageNumber =
                                   Nothing}

-- | Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field.
tdsPageNumber :: Lens' TeletextDestinationSettings (Maybe Text)
tdsPageNumber = lens _tdsPageNumber (\ s a -> s{_tdsPageNumber = a})

instance FromJSON TeletextDestinationSettings where
        parseJSON
          = withObject "TeletextDestinationSettings"
              (\ x ->
                 TeletextDestinationSettings' <$>
                   (x .:? "pageNumber"))

instance Hashable TeletextDestinationSettings where

instance NFData TeletextDestinationSettings where

instance ToJSON TeletextDestinationSettings where
        toJSON TeletextDestinationSettings'{..}
          = object
              (catMaybes [("pageNumber" .=) <$> _tdsPageNumber])
