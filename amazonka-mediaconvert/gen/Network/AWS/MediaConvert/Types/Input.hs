{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Input
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Input where

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

-- | Specifies media input
--
-- /See:/ 'input' smart constructor.
data Input = Input'{_iVideoSelector ::
                    !(Maybe VideoSelector),
                    _iProgramNumber :: !(Maybe Int),
                    _iAudioSelectorGroups ::
                    !(Maybe (Map Text AudioSelectorGroup)),
                    _iTimecodeSource :: !(Maybe InputTimecodeSource),
                    _iAudioSelectors ::
                    !(Maybe (Map Text AudioSelector)),
                    _iDeblockFilter :: !(Maybe InputDeblockFilter),
                    _iInputClippings :: !(Maybe [InputClipping]),
                    _iDenoiseFilter :: !(Maybe InputDenoiseFilter),
                    _iFilterStrength :: !(Maybe Int),
                    _iPsiControl :: !(Maybe InputPsiControl),
                    _iCaptionSelectors ::
                    !(Maybe (Map Text CaptionSelector)),
                    _iFileInput :: !(Maybe Text),
                    _iFilterEnable :: !(Maybe InputFilterEnable)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iVideoSelector' - Undocumented member.
--
-- * 'iProgramNumber' - Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
--
-- * 'iAudioSelectorGroups' - Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
--
-- * 'iTimecodeSource' - Undocumented member.
--
-- * 'iAudioSelectors' - Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
--
-- * 'iDeblockFilter' - Undocumented member.
--
-- * 'iInputClippings' - (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
--
-- * 'iDenoiseFilter' - Undocumented member.
--
-- * 'iFilterStrength' - Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
--
-- * 'iPsiControl' - Undocumented member.
--
-- * 'iCaptionSelectors' - Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
--
-- * 'iFileInput' - Use Input (fileInput) to define the source file used in the transcode job. There can be multiple inputs in a job. These inputs are concantenated, in the order they are specified in the job, to create the output.
--
-- * 'iFilterEnable' - Undocumented member.
input
    :: Input
input
  = Input'{_iVideoSelector = Nothing,
           _iProgramNumber = Nothing,
           _iAudioSelectorGroups = Nothing,
           _iTimecodeSource = Nothing,
           _iAudioSelectors = Nothing,
           _iDeblockFilter = Nothing,
           _iInputClippings = Nothing,
           _iDenoiseFilter = Nothing,
           _iFilterStrength = Nothing, _iPsiControl = Nothing,
           _iCaptionSelectors = Nothing, _iFileInput = Nothing,
           _iFilterEnable = Nothing}

-- | Undocumented member.
iVideoSelector :: Lens' Input (Maybe VideoSelector)
iVideoSelector = lens _iVideoSelector (\ s a -> s{_iVideoSelector = a})

-- | Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
iProgramNumber :: Lens' Input (Maybe Int)
iProgramNumber = lens _iProgramNumber (\ s a -> s{_iProgramNumber = a})

-- | Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
iAudioSelectorGroups :: Lens' Input (HashMap Text AudioSelectorGroup)
iAudioSelectorGroups = lens _iAudioSelectorGroups (\ s a -> s{_iAudioSelectorGroups = a}) . _Default . _Map

-- | Undocumented member.
iTimecodeSource :: Lens' Input (Maybe InputTimecodeSource)
iTimecodeSource = lens _iTimecodeSource (\ s a -> s{_iTimecodeSource = a})

-- | Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
iAudioSelectors :: Lens' Input (HashMap Text AudioSelector)
iAudioSelectors = lens _iAudioSelectors (\ s a -> s{_iAudioSelectors = a}) . _Default . _Map

-- | Undocumented member.
iDeblockFilter :: Lens' Input (Maybe InputDeblockFilter)
iDeblockFilter = lens _iDeblockFilter (\ s a -> s{_iDeblockFilter = a})

-- | (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
iInputClippings :: Lens' Input [InputClipping]
iInputClippings = lens _iInputClippings (\ s a -> s{_iInputClippings = a}) . _Default . _Coerce

-- | Undocumented member.
iDenoiseFilter :: Lens' Input (Maybe InputDenoiseFilter)
iDenoiseFilter = lens _iDenoiseFilter (\ s a -> s{_iDenoiseFilter = a})

-- | Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
iFilterStrength :: Lens' Input (Maybe Int)
iFilterStrength = lens _iFilterStrength (\ s a -> s{_iFilterStrength = a})

-- | Undocumented member.
iPsiControl :: Lens' Input (Maybe InputPsiControl)
iPsiControl = lens _iPsiControl (\ s a -> s{_iPsiControl = a})

-- | Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
iCaptionSelectors :: Lens' Input (HashMap Text CaptionSelector)
iCaptionSelectors = lens _iCaptionSelectors (\ s a -> s{_iCaptionSelectors = a}) . _Default . _Map

-- | Use Input (fileInput) to define the source file used in the transcode job. There can be multiple inputs in a job. These inputs are concantenated, in the order they are specified in the job, to create the output.
iFileInput :: Lens' Input (Maybe Text)
iFileInput = lens _iFileInput (\ s a -> s{_iFileInput = a})

-- | Undocumented member.
iFilterEnable :: Lens' Input (Maybe InputFilterEnable)
iFilterEnable = lens _iFilterEnable (\ s a -> s{_iFilterEnable = a})

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ x ->
                 Input' <$>
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
                     <*> (x .:? "fileInput")
                     <*> (x .:? "filterEnable"))

instance Hashable Input where

instance NFData Input where

instance ToJSON Input where
        toJSON Input'{..}
          = object
              (catMaybes
                 [("videoSelector" .=) <$> _iVideoSelector,
                  ("programNumber" .=) <$> _iProgramNumber,
                  ("audioSelectorGroups" .=) <$> _iAudioSelectorGroups,
                  ("timecodeSource" .=) <$> _iTimecodeSource,
                  ("audioSelectors" .=) <$> _iAudioSelectors,
                  ("deblockFilter" .=) <$> _iDeblockFilter,
                  ("inputClippings" .=) <$> _iInputClippings,
                  ("denoiseFilter" .=) <$> _iDenoiseFilter,
                  ("filterStrength" .=) <$> _iFilterStrength,
                  ("psiControl" .=) <$> _iPsiControl,
                  ("captionSelectors" .=) <$> _iCaptionSelectors,
                  ("fileInput" .=) <$> _iFileInput,
                  ("filterEnable" .=) <$> _iFilterEnable])
