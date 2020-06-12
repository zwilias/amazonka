{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.MovSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.MovClapAtom
import Network.AWS.MediaConvert.Types.MovCslgAtom
import Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
import Network.AWS.MediaConvert.Types.MovPaddingControl
import Network.AWS.MediaConvert.Types.MovReference
import Network.AWS.Prelude

-- | Settings for MOV Container.
--
-- /See:/ 'movSettings' smart constructor.
data MovSettings = MovSettings'{_msReference ::
                                !(Maybe MovReference),
                                _msCslgAtom :: !(Maybe MovCslgAtom),
                                _msMpeg2FourCCControl ::
                                !(Maybe MovMpeg2FourCCControl),
                                _msPaddingControl :: !(Maybe MovPaddingControl),
                                _msClapAtom :: !(Maybe MovClapAtom)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MovSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msReference' - Undocumented member.
--
-- * 'msCslgAtom' - Undocumented member.
--
-- * 'msMpeg2FourCCControl' - Undocumented member.
--
-- * 'msPaddingControl' - Undocumented member.
--
-- * 'msClapAtom' - Undocumented member.
movSettings
    :: MovSettings
movSettings
  = MovSettings'{_msReference = Nothing,
                 _msCslgAtom = Nothing,
                 _msMpeg2FourCCControl = Nothing,
                 _msPaddingControl = Nothing, _msClapAtom = Nothing}

-- | Undocumented member.
msReference :: Lens' MovSettings (Maybe MovReference)
msReference = lens _msReference (\ s a -> s{_msReference = a})

-- | Undocumented member.
msCslgAtom :: Lens' MovSettings (Maybe MovCslgAtom)
msCslgAtom = lens _msCslgAtom (\ s a -> s{_msCslgAtom = a})

-- | Undocumented member.
msMpeg2FourCCControl :: Lens' MovSettings (Maybe MovMpeg2FourCCControl)
msMpeg2FourCCControl = lens _msMpeg2FourCCControl (\ s a -> s{_msMpeg2FourCCControl = a})

-- | Undocumented member.
msPaddingControl :: Lens' MovSettings (Maybe MovPaddingControl)
msPaddingControl = lens _msPaddingControl (\ s a -> s{_msPaddingControl = a})

-- | Undocumented member.
msClapAtom :: Lens' MovSettings (Maybe MovClapAtom)
msClapAtom = lens _msClapAtom (\ s a -> s{_msClapAtom = a})

instance FromJSON MovSettings where
        parseJSON
          = withObject "MovSettings"
              (\ x ->
                 MovSettings' <$>
                   (x .:? "reference") <*> (x .:? "cslgAtom") <*>
                     (x .:? "mpeg2FourCCControl")
                     <*> (x .:? "paddingControl")
                     <*> (x .:? "clapAtom"))

instance Hashable MovSettings where

instance NFData MovSettings where

instance ToJSON MovSettings where
        toJSON MovSettings'{..}
          = object
              (catMaybes
                 [("reference" .=) <$> _msReference,
                  ("cslgAtom" .=) <$> _msCslgAtom,
                  ("mpeg2FourCCControl" .=) <$> _msMpeg2FourCCControl,
                  ("paddingControl" .=) <$> _msPaddingControl,
                  ("clapAtom" .=) <$> _msClapAtom])
