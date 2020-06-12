{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.InsertableImage
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.InsertableImage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for Insertable Image
--
-- /See:/ 'insertableImage' smart constructor.
data InsertableImage = InsertableImage'{_iiImageX ::
                                        !(Maybe Int),
                                        _iiHeight :: !(Maybe Int),
                                        _iiStartTime :: !(Maybe Text),
                                        _iiFadeOut :: !(Maybe Int),
                                        _iiWidth :: !(Maybe Int),
                                        _iiOpacity :: !(Maybe Int),
                                        _iiLayer :: !(Maybe Int),
                                        _iiDuration :: !(Maybe Int),
                                        _iiImageY :: !(Maybe Int),
                                        _iiImageInserterInput :: !(Maybe Text),
                                        _iiFadeIn :: !(Maybe Int)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InsertableImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiImageX' - Use Left (ImageX) to set the distance, in pixels, between the inserted image and the left edge of the frame. Required for BMP, PNG and TGA input.
--
-- * 'iiHeight' - Specify the Height (Height) of the inserted image. Use a value that is less than or equal to the video resolution height. Leave this setting blank to use the native height of the image.
--
-- * 'iiStartTime' - Use Start time (StartTime) to specify the video timecode when the image is inserted in the output. This must be in timecode format (HH:MM:SS:FF)
--
-- * 'iiFadeOut' - Use Fade out (FadeOut) to set the length, in milliseconds, of the inserted image fade out. If you don't specify a value for Fade out, the image will disappear abruptly at the end of the inserted image duration.
--
-- * 'iiWidth' - Specify the Width (Width) of the inserted image. Use a value that is less than or equal to the video resolution width. Leave this setting blank to use the native width of the image.
--
-- * 'iiOpacity' - Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50.
--
-- * 'iiLayer' - Use Layer (Layer) to specify how overlapping inserted images appear. Images with higher values of layer appear on top of images with lower values of layer.
--
-- * 'iiDuration' - Use Duration (Duration) to set the time, in milliseconds, for the image to remain on the output video.
--
-- * 'iiImageY' - Use Top (ImageY) to set the distance, in pixels, between the inserted image and the top edge of the video frame. Required for BMP, PNG and TGA input.
--
-- * 'iiImageInserterInput' - Use Image location (imageInserterInput) to specify the Amazon S3 location of the image to be inserted into the output. Use a 32 bit BMP, PNG, or TGA file that fits inside the video frame.
--
-- * 'iiFadeIn' - Use Fade in (FadeIut) to set the length, in milliseconds, of the inserted image fade in. If you don't specify a value for Fade in, the image will appear abruptly at the Start time.
insertableImage
    :: InsertableImage
insertableImage
  = InsertableImage'{_iiImageX = Nothing,
                     _iiHeight = Nothing, _iiStartTime = Nothing,
                     _iiFadeOut = Nothing, _iiWidth = Nothing,
                     _iiOpacity = Nothing, _iiLayer = Nothing,
                     _iiDuration = Nothing, _iiImageY = Nothing,
                     _iiImageInserterInput = Nothing, _iiFadeIn = Nothing}

-- | Use Left (ImageX) to set the distance, in pixels, between the inserted image and the left edge of the frame. Required for BMP, PNG and TGA input.
iiImageX :: Lens' InsertableImage (Maybe Int)
iiImageX = lens _iiImageX (\ s a -> s{_iiImageX = a})

-- | Specify the Height (Height) of the inserted image. Use a value that is less than or equal to the video resolution height. Leave this setting blank to use the native height of the image.
iiHeight :: Lens' InsertableImage (Maybe Int)
iiHeight = lens _iiHeight (\ s a -> s{_iiHeight = a})

-- | Use Start time (StartTime) to specify the video timecode when the image is inserted in the output. This must be in timecode format (HH:MM:SS:FF)
iiStartTime :: Lens' InsertableImage (Maybe Text)
iiStartTime = lens _iiStartTime (\ s a -> s{_iiStartTime = a})

-- | Use Fade out (FadeOut) to set the length, in milliseconds, of the inserted image fade out. If you don't specify a value for Fade out, the image will disappear abruptly at the end of the inserted image duration.
iiFadeOut :: Lens' InsertableImage (Maybe Int)
iiFadeOut = lens _iiFadeOut (\ s a -> s{_iiFadeOut = a})

-- | Specify the Width (Width) of the inserted image. Use a value that is less than or equal to the video resolution width. Leave this setting blank to use the native width of the image.
iiWidth :: Lens' InsertableImage (Maybe Int)
iiWidth = lens _iiWidth (\ s a -> s{_iiWidth = a})

-- | Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50.
iiOpacity :: Lens' InsertableImage (Maybe Int)
iiOpacity = lens _iiOpacity (\ s a -> s{_iiOpacity = a})

-- | Use Layer (Layer) to specify how overlapping inserted images appear. Images with higher values of layer appear on top of images with lower values of layer.
iiLayer :: Lens' InsertableImage (Maybe Int)
iiLayer = lens _iiLayer (\ s a -> s{_iiLayer = a})

-- | Use Duration (Duration) to set the time, in milliseconds, for the image to remain on the output video.
iiDuration :: Lens' InsertableImage (Maybe Int)
iiDuration = lens _iiDuration (\ s a -> s{_iiDuration = a})

-- | Use Top (ImageY) to set the distance, in pixels, between the inserted image and the top edge of the video frame. Required for BMP, PNG and TGA input.
iiImageY :: Lens' InsertableImage (Maybe Int)
iiImageY = lens _iiImageY (\ s a -> s{_iiImageY = a})

-- | Use Image location (imageInserterInput) to specify the Amazon S3 location of the image to be inserted into the output. Use a 32 bit BMP, PNG, or TGA file that fits inside the video frame.
iiImageInserterInput :: Lens' InsertableImage (Maybe Text)
iiImageInserterInput = lens _iiImageInserterInput (\ s a -> s{_iiImageInserterInput = a})

-- | Use Fade in (FadeIut) to set the length, in milliseconds, of the inserted image fade in. If you don't specify a value for Fade in, the image will appear abruptly at the Start time.
iiFadeIn :: Lens' InsertableImage (Maybe Int)
iiFadeIn = lens _iiFadeIn (\ s a -> s{_iiFadeIn = a})

instance FromJSON InsertableImage where
        parseJSON
          = withObject "InsertableImage"
              (\ x ->
                 InsertableImage' <$>
                   (x .:? "imageX") <*> (x .:? "height") <*>
                     (x .:? "startTime")
                     <*> (x .:? "fadeOut")
                     <*> (x .:? "width")
                     <*> (x .:? "opacity")
                     <*> (x .:? "layer")
                     <*> (x .:? "duration")
                     <*> (x .:? "imageY")
                     <*> (x .:? "imageInserterInput")
                     <*> (x .:? "fadeIn"))

instance Hashable InsertableImage where

instance NFData InsertableImage where

instance ToJSON InsertableImage where
        toJSON InsertableImage'{..}
          = object
              (catMaybes
                 [("imageX" .=) <$> _iiImageX,
                  ("height" .=) <$> _iiHeight,
                  ("startTime" .=) <$> _iiStartTime,
                  ("fadeOut" .=) <$> _iiFadeOut,
                  ("width" .=) <$> _iiWidth,
                  ("opacity" .=) <$> _iiOpacity,
                  ("layer" .=) <$> _iiLayer,
                  ("duration" .=) <$> _iiDuration,
                  ("imageY" .=) <$> _iiImageY,
                  ("imageInserterInput" .=) <$> _iiImageInserterInput,
                  ("fadeIn" .=) <$> _iiFadeIn])
