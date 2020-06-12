{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InputTemplate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InputTemplate where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AudioSelector
import Network.AWS.MediaConvert.Types.AudioSelectorGroup
import Network.AWS.MediaConvert.Types.CaptionSelector
import Network.AWS.MediaConvert.Types.InputClipping
import Network.AWS.MediaConvert.Types.InputDeblockFilter
import Network.AWS.MediaConvert.Types.InputDenoiseFilter
import Network.AWS.MediaConvert.Types.InputFilterEnable
import Network.AWS.MediaConvert.Types.InputPsiControl
import Network.AWS.MediaConvert.Types.InputTimecodeSource
import Network.AWS.MediaConvert.Types.VideoSelector
import Network.AWS.Prelude

-- | Specified video input in a template.
--
-- /See:/ 'inputTemplate' smart constructor.
data InputTemplate = InputTemplate'{_itVideoSelector
                                    :: !(Maybe VideoSelector),
                                    _itProgramNumber :: !(Maybe Int),
                                    _itAudioSelectorGroups ::
                                    !(Maybe (Map Text AudioSelectorGroup)),
                                    _itTimecodeSource ::
                                    !(Maybe InputTimecodeSource),
                                    _itAudioSelectors ::
                                    !(Maybe (Map Text AudioSelector)),
                                    _itDeblockFilter ::
                                    !(Maybe InputDeblockFilter),
                                    _itInputClippings ::
                                    !(Maybe [InputClipping]),
                                    _itDenoiseFilter ::
                                    !(Maybe InputDenoiseFilter),
                                    _itFilterStrength :: !(Maybe Int),
                                    _itPsiControl :: !(Maybe InputPsiControl),
                                    _itCaptionSelectors ::
                                    !(Maybe (Map Text CaptionSelector)),
                                    _itFilterEnable ::
                                    !(Maybe InputFilterEnable)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itVideoSelector' - Undocumented member.
--
-- * 'itProgramNumber' - Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
--
-- * 'itAudioSelectorGroups' - Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
--
-- * 'itTimecodeSource' - Undocumented member.
--
-- * 'itAudioSelectors' - Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
--
-- * 'itDeblockFilter' - Undocumented member.
--
-- * 'itInputClippings' - (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
--
-- * 'itDenoiseFilter' - Undocumented member.
--
-- * 'itFilterStrength' - Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
--
-- * 'itPsiControl' - Undocumented member.
--
-- * 'itCaptionSelectors' - Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
--
-- * 'itFilterEnable' - Undocumented member.
inputTemplate
    :: InputTemplate
inputTemplate
  = InputTemplate'{_itVideoSelector = Nothing,
                   _itProgramNumber = Nothing,
                   _itAudioSelectorGroups = Nothing,
                   _itTimecodeSource = Nothing,
                   _itAudioSelectors = Nothing,
                   _itDeblockFilter = Nothing,
                   _itInputClippings = Nothing,
                   _itDenoiseFilter = Nothing,
                   _itFilterStrength = Nothing, _itPsiControl = Nothing,
                   _itCaptionSelectors = Nothing,
                   _itFilterEnable = Nothing}

-- | Undocumented member.
itVideoSelector :: Lens' InputTemplate (Maybe VideoSelector)
itVideoSelector = lens _itVideoSelector (\ s a -> s{_itVideoSelector = a})

-- | Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
itProgramNumber :: Lens' InputTemplate (Maybe Int)
itProgramNumber = lens _itProgramNumber (\ s a -> s{_itProgramNumber = a})

-- | Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
itAudioSelectorGroups :: Lens' InputTemplate (HashMap Text AudioSelectorGroup)
itAudioSelectorGroups = lens _itAudioSelectorGroups (\ s a -> s{_itAudioSelectorGroups = a}) . _Default . _Map

-- | Undocumented member.
itTimecodeSource :: Lens' InputTemplate (Maybe InputTimecodeSource)
itTimecodeSource = lens _itTimecodeSource (\ s a -> s{_itTimecodeSource = a})

-- | Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
itAudioSelectors :: Lens' InputTemplate (HashMap Text AudioSelector)
itAudioSelectors = lens _itAudioSelectors (\ s a -> s{_itAudioSelectors = a}) . _Default . _Map

-- | Undocumented member.
itDeblockFilter :: Lens' InputTemplate (Maybe InputDeblockFilter)
itDeblockFilter = lens _itDeblockFilter (\ s a -> s{_itDeblockFilter = a})

-- | (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
itInputClippings :: Lens' InputTemplate [InputClipping]
itInputClippings = lens _itInputClippings (\ s a -> s{_itInputClippings = a}) . _Default . _Coerce

-- | Undocumented member.
itDenoiseFilter :: Lens' InputTemplate (Maybe InputDenoiseFilter)
itDenoiseFilter = lens _itDenoiseFilter (\ s a -> s{_itDenoiseFilter = a})

-- | Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
itFilterStrength :: Lens' InputTemplate (Maybe Int)
itFilterStrength = lens _itFilterStrength (\ s a -> s{_itFilterStrength = a})

-- | Undocumented member.
itPsiControl :: Lens' InputTemplate (Maybe InputPsiControl)
itPsiControl = lens _itPsiControl (\ s a -> s{_itPsiControl = a})

-- | Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
itCaptionSelectors :: Lens' InputTemplate (HashMap Text CaptionSelector)
itCaptionSelectors = lens _itCaptionSelectors (\ s a -> s{_itCaptionSelectors = a}) . _Default . _Map

-- | Undocumented member.
itFilterEnable :: Lens' InputTemplate (Maybe InputFilterEnable)
itFilterEnable = lens _itFilterEnable (\ s a -> s{_itFilterEnable = a})

instance FromJSON InputTemplate where
        parseJSON
          = withObject "InputTemplate"
              (\ x ->
                 InputTemplate' <$>
                   (x .:? "videoSelector") <*> (x .:? "programNumber")
                     <*> (x .:? "audioSelectorGroups" .!= mempty)
                     <*> (x .:? "timecodeSource")
                     <*> (x .:? "audioSelectors" .!= mempty)
                     <*> (x .:? "deblockFilter")
                     <*> (x .:? "inputClippings" .!= mempty)
                     <*> (x .:? "denoiseFilter")
                     <*> (x .:? "filterStrength")
                     <*> (x .:? "psiControl")
                     <*> (x .:? "captionSelectors" .!= mempty)
                     <*> (x .:? "filterEnable"))

instance Hashable InputTemplate where

instance NFData InputTemplate where

instance ToJSON InputTemplate where
        toJSON InputTemplate'{..}
          = object
              (catMaybes
                 [("videoSelector" .=) <$> _itVideoSelector,
                  ("programNumber" .=) <$> _itProgramNumber,
                  ("audioSelectorGroups" .=) <$>
                    _itAudioSelectorGroups,
                  ("timecodeSource" .=) <$> _itTimecodeSource,
                  ("audioSelectors" .=) <$> _itAudioSelectors,
                  ("deblockFilter" .=) <$> _itDeblockFilter,
                  ("inputClippings" .=) <$> _itInputClippings,
                  ("denoiseFilter" .=) <$> _itDenoiseFilter,
                  ("filterStrength" .=) <$> _itFilterStrength,
                  ("psiControl" .=) <$> _itPsiControl,
                  ("captionSelectors" .=) <$> _itCaptionSelectors,
                  ("filterEnable" .=) <$> _itFilterEnable])
