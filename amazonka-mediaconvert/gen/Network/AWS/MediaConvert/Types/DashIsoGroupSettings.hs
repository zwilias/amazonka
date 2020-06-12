{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoGroupSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.DashIsoGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DashIsoEncryptionSettings
import Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
import Network.AWS.MediaConvert.Types.DashIsoSegmentControl
import Network.AWS.Prelude

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.
--
-- /See:/ 'dashIsoGroupSettings' smart constructor.
data DashIsoGroupSettings = DashIsoGroupSettings'{_digsFragmentLength
                                                  :: !(Maybe Int),
                                                  _digsSegmentControl ::
                                                  !(Maybe
                                                      DashIsoSegmentControl),
                                                  _digsDestination ::
                                                  !(Maybe Text),
                                                  _digsHbbtvCompliance ::
                                                  !(Maybe
                                                      DashIsoHbbtvCompliance),
                                                  _digsMinBufferTime ::
                                                  !(Maybe Int),
                                                  _digsBaseURL :: !(Maybe Text),
                                                  _digsEncryption ::
                                                  !(Maybe
                                                      DashIsoEncryptionSettings),
                                                  _digsSegmentLength ::
                                                  !(Maybe Int)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DashIsoGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'digsFragmentLength' - Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
--
-- * 'digsSegmentControl' - Undocumented member.
--
-- * 'digsDestination' - Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
--
-- * 'digsHbbtvCompliance' - Undocumented member.
--
-- * 'digsMinBufferTime' - Minimum time of initially buffered media that is needed to ensure smooth playout.
--
-- * 'digsBaseURL' - A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
--
-- * 'digsEncryption' - DRM settings.
--
-- * 'digsSegmentLength' - Length of mpd segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer. When Emit Single File is checked, the segmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
dashIsoGroupSettings
    :: DashIsoGroupSettings
dashIsoGroupSettings
  = DashIsoGroupSettings'{_digsFragmentLength =
                            Nothing,
                          _digsSegmentControl = Nothing,
                          _digsDestination = Nothing,
                          _digsHbbtvCompliance = Nothing,
                          _digsMinBufferTime = Nothing, _digsBaseURL = Nothing,
                          _digsEncryption = Nothing,
                          _digsSegmentLength = Nothing}

-- | Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
digsFragmentLength :: Lens' DashIsoGroupSettings (Maybe Int)
digsFragmentLength = lens _digsFragmentLength (\ s a -> s{_digsFragmentLength = a})

-- | Undocumented member.
digsSegmentControl :: Lens' DashIsoGroupSettings (Maybe DashIsoSegmentControl)
digsSegmentControl = lens _digsSegmentControl (\ s a -> s{_digsSegmentControl = a})

-- | Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
digsDestination :: Lens' DashIsoGroupSettings (Maybe Text)
digsDestination = lens _digsDestination (\ s a -> s{_digsDestination = a})

-- | Undocumented member.
digsHbbtvCompliance :: Lens' DashIsoGroupSettings (Maybe DashIsoHbbtvCompliance)
digsHbbtvCompliance = lens _digsHbbtvCompliance (\ s a -> s{_digsHbbtvCompliance = a})

-- | Minimum time of initially buffered media that is needed to ensure smooth playout.
digsMinBufferTime :: Lens' DashIsoGroupSettings (Maybe Int)
digsMinBufferTime = lens _digsMinBufferTime (\ s a -> s{_digsMinBufferTime = a})

-- | A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
digsBaseURL :: Lens' DashIsoGroupSettings (Maybe Text)
digsBaseURL = lens _digsBaseURL (\ s a -> s{_digsBaseURL = a})

-- | DRM settings.
digsEncryption :: Lens' DashIsoGroupSettings (Maybe DashIsoEncryptionSettings)
digsEncryption = lens _digsEncryption (\ s a -> s{_digsEncryption = a})

-- | Length of mpd segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer. When Emit Single File is checked, the segmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
digsSegmentLength :: Lens' DashIsoGroupSettings (Maybe Int)
digsSegmentLength = lens _digsSegmentLength (\ s a -> s{_digsSegmentLength = a})

instance FromJSON DashIsoGroupSettings where
        parseJSON
          = withObject "DashIsoGroupSettings"
              (\ x ->
                 DashIsoGroupSettings' <$>
                   (x .:? "fragmentLength") <*> (x .:? "segmentControl")
                     <*> (x .:? "destination")
                     <*> (x .:? "hbbtvCompliance")
                     <*> (x .:? "minBufferTime")
                     <*> (x .:? "baseUrl")
                     <*> (x .:? "encryption")
                     <*> (x .:? "segmentLength"))

instance Hashable DashIsoGroupSettings where

instance NFData DashIsoGroupSettings where

instance ToJSON DashIsoGroupSettings where
        toJSON DashIsoGroupSettings'{..}
          = object
              (catMaybes
                 [("fragmentLength" .=) <$> _digsFragmentLength,
                  ("segmentControl" .=) <$> _digsSegmentControl,
                  ("destination" .=) <$> _digsDestination,
                  ("hbbtvCompliance" .=) <$> _digsHbbtvCompliance,
                  ("minBufferTime" .=) <$> _digsMinBufferTime,
                  ("baseUrl" .=) <$> _digsBaseURL,
                  ("encryption" .=) <$> _digsEncryption,
                  ("segmentLength" .=) <$> _digsSegmentLength])
