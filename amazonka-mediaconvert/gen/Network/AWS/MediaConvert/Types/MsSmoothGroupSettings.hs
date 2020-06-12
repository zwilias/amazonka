{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.MsSmoothGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
import Network.AWS.MediaConvert.Types.MsSmoothEncryptionSettings
import Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
import Network.AWS.Prelude

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
--
-- /See:/ 'msSmoothGroupSettings' smart constructor.
data MsSmoothGroupSettings = MsSmoothGroupSettings'{_msgsFragmentLength
                                                    :: !(Maybe Int),
                                                    _msgsManifestEncoding ::
                                                    !(Maybe
                                                        MsSmoothManifestEncoding),
                                                    _msgsDestination ::
                                                    !(Maybe Text),
                                                    _msgsAudioDeduplication ::
                                                    !(Maybe
                                                        MsSmoothAudioDeduplication),
                                                    _msgsEncryption ::
                                                    !(Maybe
                                                        MsSmoothEncryptionSettings)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'MsSmoothGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msgsFragmentLength' - Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and framerate.
--
-- * 'msgsManifestEncoding' - Undocumented member.
--
-- * 'msgsDestination' - Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
--
-- * 'msgsAudioDeduplication' - Undocumented member.
--
-- * 'msgsEncryption' - Undocumented member.
msSmoothGroupSettings
    :: MsSmoothGroupSettings
msSmoothGroupSettings
  = MsSmoothGroupSettings'{_msgsFragmentLength =
                             Nothing,
                           _msgsManifestEncoding = Nothing,
                           _msgsDestination = Nothing,
                           _msgsAudioDeduplication = Nothing,
                           _msgsEncryption = Nothing}

-- | Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and framerate.
msgsFragmentLength :: Lens' MsSmoothGroupSettings (Maybe Int)
msgsFragmentLength = lens _msgsFragmentLength (\ s a -> s{_msgsFragmentLength = a})

-- | Undocumented member.
msgsManifestEncoding :: Lens' MsSmoothGroupSettings (Maybe MsSmoothManifestEncoding)
msgsManifestEncoding = lens _msgsManifestEncoding (\ s a -> s{_msgsManifestEncoding = a})

-- | Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
msgsDestination :: Lens' MsSmoothGroupSettings (Maybe Text)
msgsDestination = lens _msgsDestination (\ s a -> s{_msgsDestination = a})

-- | Undocumented member.
msgsAudioDeduplication :: Lens' MsSmoothGroupSettings (Maybe MsSmoothAudioDeduplication)
msgsAudioDeduplication = lens _msgsAudioDeduplication (\ s a -> s{_msgsAudioDeduplication = a})

-- | Undocumented member.
msgsEncryption :: Lens' MsSmoothGroupSettings (Maybe MsSmoothEncryptionSettings)
msgsEncryption = lens _msgsEncryption (\ s a -> s{_msgsEncryption = a})

instance FromJSON MsSmoothGroupSettings where
        parseJSON
          = withObject "MsSmoothGroupSettings"
              (\ x ->
                 MsSmoothGroupSettings' <$>
                   (x .:? "fragmentLength") <*>
                     (x .:? "manifestEncoding")
                     <*> (x .:? "destination")
                     <*> (x .:? "audioDeduplication")
                     <*> (x .:? "encryption"))

instance Hashable MsSmoothGroupSettings where

instance NFData MsSmoothGroupSettings where

instance ToJSON MsSmoothGroupSettings where
        toJSON MsSmoothGroupSettings'{..}
          = object
              (catMaybes
                 [("fragmentLength" .=) <$> _msgsFragmentLength,
                  ("manifestEncoding" .=) <$> _msgsManifestEncoding,
                  ("destination" .=) <$> _msgsDestination,
                  ("audioDeduplication" .=) <$>
                    _msgsAudioDeduplication,
                  ("encryption" .=) <$> _msgsEncryption])
