{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.JobSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.JobSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AvailBlanking
import Network.AWS.MediaConvert.Types.Input
import Network.AWS.MediaConvert.Types.NielsenConfiguration
import Network.AWS.MediaConvert.Types.OutputGroup
import Network.AWS.MediaConvert.Types.TimecodeConfig
import Network.AWS.MediaConvert.Types.TimedMetadataInsertion
import Network.AWS.Prelude

-- | JobSettings contains all the transcode settings for a job.
--
-- /See:/ 'jobSettings' smart constructor.
data JobSettings = JobSettings'{_jsInputs ::
                                !(Maybe [Input]),
                                _jsTimedMetadataInsertion ::
                                !(Maybe TimedMetadataInsertion),
                                _jsNielsenConfiguration ::
                                !(Maybe NielsenConfiguration),
                                _jsAvailBlanking :: !(Maybe AvailBlanking),
                                _jsTimecodeConfig :: !(Maybe TimecodeConfig),
                                _jsOutputGroups :: !(Maybe [OutputGroup]),
                                _jsAdAvailOffset :: !(Maybe Int)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsInputs' - Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output.
--
-- * 'jsTimedMetadataInsertion' - Undocumented member.
--
-- * 'jsNielsenConfiguration' - Undocumented member.
--
-- * 'jsAvailBlanking' - Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
--
-- * 'jsTimecodeConfig' - Contains settings used to acquire and adjust timecode information from inputs.
--
-- * 'jsOutputGroups' - **!!**(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings
--
-- * 'jsAdAvailOffset' - When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
jobSettings
    :: JobSettings
jobSettings
  = JobSettings'{_jsInputs = Nothing,
                 _jsTimedMetadataInsertion = Nothing,
                 _jsNielsenConfiguration = Nothing,
                 _jsAvailBlanking = Nothing,
                 _jsTimecodeConfig = Nothing,
                 _jsOutputGroups = Nothing,
                 _jsAdAvailOffset = Nothing}

-- | Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output.
jsInputs :: Lens' JobSettings [Input]
jsInputs = lens _jsInputs (\ s a -> s{_jsInputs = a}) . _Default . _Coerce

-- | Undocumented member.
jsTimedMetadataInsertion :: Lens' JobSettings (Maybe TimedMetadataInsertion)
jsTimedMetadataInsertion = lens _jsTimedMetadataInsertion (\ s a -> s{_jsTimedMetadataInsertion = a})

-- | Undocumented member.
jsNielsenConfiguration :: Lens' JobSettings (Maybe NielsenConfiguration)
jsNielsenConfiguration = lens _jsNielsenConfiguration (\ s a -> s{_jsNielsenConfiguration = a})

-- | Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
jsAvailBlanking :: Lens' JobSettings (Maybe AvailBlanking)
jsAvailBlanking = lens _jsAvailBlanking (\ s a -> s{_jsAvailBlanking = a})

-- | Contains settings used to acquire and adjust timecode information from inputs.
jsTimecodeConfig :: Lens' JobSettings (Maybe TimecodeConfig)
jsTimecodeConfig = lens _jsTimecodeConfig (\ s a -> s{_jsTimecodeConfig = a})

-- | **!!**(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings
jsOutputGroups :: Lens' JobSettings [OutputGroup]
jsOutputGroups = lens _jsOutputGroups (\ s a -> s{_jsOutputGroups = a}) . _Default . _Coerce

-- | When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
jsAdAvailOffset :: Lens' JobSettings (Maybe Int)
jsAdAvailOffset = lens _jsAdAvailOffset (\ s a -> s{_jsAdAvailOffset = a})

instance FromJSON JobSettings where
        parseJSON
          = withObject "JobSettings"
              (\ x ->
                 JobSettings' <$>
                   (x .:? "inputs" .!= mempty) <*>
                     (x .:? "timedMetadataInsertion")
                     <*> (x .:? "nielsenConfiguration")
                     <*> (x .:? "availBlanking")
                     <*> (x .:? "timecodeConfig")
                     <*> (x .:? "outputGroups" .!= mempty)
                     <*> (x .:? "adAvailOffset"))

instance Hashable JobSettings where

instance NFData JobSettings where

instance ToJSON JobSettings where
        toJSON JobSettings'{..}
          = object
              (catMaybes
                 [("inputs" .=) <$> _jsInputs,
                  ("timedMetadataInsertion" .=) <$>
                    _jsTimedMetadataInsertion,
                  ("nielsenConfiguration" .=) <$>
                    _jsNielsenConfiguration,
                  ("availBlanking" .=) <$> _jsAvailBlanking,
                  ("timecodeConfig" .=) <$> _jsTimecodeConfig,
                  ("outputGroups" .=) <$> _jsOutputGroups,
                  ("adAvailOffset" .=) <$> _jsAdAvailOffset])
