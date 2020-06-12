{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CaptionSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.CaptionSelector where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CaptionSourceSettings
import Network.AWS.MediaConvert.Types.LanguageCode
import Network.AWS.Prelude

-- | Caption inputs to be mapped to caption outputs.
--
-- /See:/ 'captionSelector' smart constructor.
data CaptionSelector = CaptionSelector'{_csLanguageCode
                                        :: !(Maybe LanguageCode),
                                        _csSourceSettings ::
                                        !(Maybe CaptionSourceSettings)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CaptionSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csLanguageCode' - The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
--
-- * 'csSourceSettings' - Undocumented member.
captionSelector
    :: CaptionSelector
captionSelector
  = CaptionSelector'{_csLanguageCode = Nothing,
                     _csSourceSettings = Nothing}

-- | The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
csLanguageCode :: Lens' CaptionSelector (Maybe LanguageCode)
csLanguageCode = lens _csLanguageCode (\ s a -> s{_csLanguageCode = a})

-- | Undocumented member.
csSourceSettings :: Lens' CaptionSelector (Maybe CaptionSourceSettings)
csSourceSettings = lens _csSourceSettings (\ s a -> s{_csSourceSettings = a})

instance FromJSON CaptionSelector where
        parseJSON
          = withObject "CaptionSelector"
              (\ x ->
                 CaptionSelector' <$>
                   (x .:? "languageCode") <*> (x .:? "sourceSettings"))

instance Hashable CaptionSelector where

instance NFData CaptionSelector where

instance ToJSON CaptionSelector where
        toJSON CaptionSelector'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _csLanguageCode,
                  ("sourceSettings" .=) <$> _csSourceSettings])
