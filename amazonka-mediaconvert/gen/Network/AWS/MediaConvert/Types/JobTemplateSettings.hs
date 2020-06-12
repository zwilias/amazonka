{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.JobTemplateSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.JobTemplateSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AvailBlanking
import Network.AWS.MediaConvert.Types.InputTemplate
import Network.AWS.MediaConvert.Types.NielsenConfiguration
import Network.AWS.MediaConvert.Types.OutputGroup
import Network.AWS.MediaConvert.Types.TimecodeConfig
import Network.AWS.MediaConvert.Types.TimedMetadataInsertion
import Network.AWS.Prelude

-- | JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
--
-- /See:/ 'jobTemplateSettings' smart constructor.
data JobTemplateSettings = JobTemplateSettings'{_jtsInputs
                                                :: !(Maybe [InputTemplate]),
                                                _jtsTimedMetadataInsertion ::
                                                !(Maybe TimedMetadataInsertion),
                                                _jtsNielsenConfiguration ::
                                                !(Maybe NielsenConfiguration),
                                                _jtsAvailBlanking ::
                                                !(Maybe AvailBlanking),
                                                _jtsTimecodeConfig ::
                                                !(Maybe TimecodeConfig),
                                                _jtsOutputGroups ::
                                                !(Maybe [OutputGroup]),
                                                _jtsAdAvailOffset ::
                                                !(Maybe Int)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobTemplateSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jtsInputs' - Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template.
--
-- * 'jtsTimedMetadataInsertion' - Undocumented member.
--
-- * 'jtsNielsenConfiguration' - Undocumented member.
--
-- * 'jtsAvailBlanking' - Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
--
-- * 'jtsTimecodeConfig' - Contains settings used to acquire and adjust timecode information from inputs.
--
-- * 'jtsOutputGroups' - **!!**(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings
--
-- * 'jtsAdAvailOffset' - When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
jobTemplateSettings
    :: JobTemplateSettings
jobTemplateSettings
  = JobTemplateSettings'{_jtsInputs = Nothing,
                         _jtsTimedMetadataInsertion = Nothing,
                         _jtsNielsenConfiguration = Nothing,
                         _jtsAvailBlanking = Nothing,
                         _jtsTimecodeConfig = Nothing,
                         _jtsOutputGroups = Nothing,
                         _jtsAdAvailOffset = Nothing}

-- | Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template.
jtsInputs :: Lens' JobTemplateSettings [InputTemplate]
jtsInputs = lens _jtsInputs (\ s a -> s{_jtsInputs = a}) . _Default . _Coerce

-- | Undocumented member.
jtsTimedMetadataInsertion :: Lens' JobTemplateSettings (Maybe TimedMetadataInsertion)
jtsTimedMetadataInsertion = lens _jtsTimedMetadataInsertion (\ s a -> s{_jtsTimedMetadataInsertion = a})

-- | Undocumented member.
jtsNielsenConfiguration :: Lens' JobTemplateSettings (Maybe NielsenConfiguration)
jtsNielsenConfiguration = lens _jtsNielsenConfiguration (\ s a -> s{_jtsNielsenConfiguration = a})

-- | Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
jtsAvailBlanking :: Lens' JobTemplateSettings (Maybe AvailBlanking)
jtsAvailBlanking = lens _jtsAvailBlanking (\ s a -> s{_jtsAvailBlanking = a})

-- | Contains settings used to acquire and adjust timecode information from inputs.
jtsTimecodeConfig :: Lens' JobTemplateSettings (Maybe TimecodeConfig)
jtsTimecodeConfig = lens _jtsTimecodeConfig (\ s a -> s{_jtsTimecodeConfig = a})

-- | **!!**(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings
jtsOutputGroups :: Lens' JobTemplateSettings [OutputGroup]
jtsOutputGroups = lens _jtsOutputGroups (\ s a -> s{_jtsOutputGroups = a}) . _Default . _Coerce

-- | When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
jtsAdAvailOffset :: Lens' JobTemplateSettings (Maybe Int)
jtsAdAvailOffset = lens _jtsAdAvailOffset (\ s a -> s{_jtsAdAvailOffset = a})

instance FromJSON JobTemplateSettings where
        parseJSON
          = withObject "JobTemplateSettings"
              (\ x ->
                 JobTemplateSettings' <$>
                   (x .:? "inputs" .!= mempty) <*>
                     (x .:? "timedMetadataInsertion")
                     <*> (x .:? "nielsenConfiguration")
                     <*> (x .:? "availBlanking")
                     <*> (x .:? "timecodeConfig")
                     <*> (x .:? "outputGroups" .!= mempty)
                     <*> (x .:? "adAvailOffset"))

instance Hashable JobTemplateSettings where

instance NFData JobTemplateSettings where

instance ToJSON JobTemplateSettings where
        toJSON JobTemplateSettings'{..}
          = object
              (catMaybes
                 [("inputs" .=) <$> _jtsInputs,
                  ("timedMetadataInsertion" .=) <$>
                    _jtsTimedMetadataInsertion,
                  ("nielsenConfiguration" .=) <$>
                    _jtsNielsenConfiguration,
                  ("availBlanking" .=) <$> _jtsAvailBlanking,
                  ("timecodeConfig" .=) <$> _jtsTimecodeConfig,
                  ("outputGroups" .=) <$> _jtsOutputGroups,
                  ("adAvailOffset" .=) <$> _jtsAdAvailOffset])
