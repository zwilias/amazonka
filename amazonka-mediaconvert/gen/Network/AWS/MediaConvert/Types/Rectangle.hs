{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Rectangle
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Rectangle where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Use Rectangle to identify a specific area of the video frame.
--
-- /See:/ 'rectangle' smart constructor.
data Rectangle = Rectangle'{_rHeight :: !(Maybe Int),
                            _rWidth :: !(Maybe Int), _rX :: !(Maybe Int),
                            _rY :: !(Maybe Int)}
                   deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Rectangle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rHeight' - Height of rectangle in pixels.
--
-- * 'rWidth' - Width of rectangle in pixels.
--
-- * 'rX' - The distance, in pixels, between the rectangle and the left edge of the video frame.
--
-- * 'rY' - The distance, in pixels, between the rectangle and the top edge of the video frame.
rectangle
    :: Rectangle
rectangle
  = Rectangle'{_rHeight = Nothing, _rWidth = Nothing,
               _rX = Nothing, _rY = Nothing}

-- | Height of rectangle in pixels.
rHeight :: Lens' Rectangle (Maybe Int)
rHeight = lens _rHeight (\ s a -> s{_rHeight = a})

-- | Width of rectangle in pixels.
rWidth :: Lens' Rectangle (Maybe Int)
rWidth = lens _rWidth (\ s a -> s{_rWidth = a})

-- | The distance, in pixels, between the rectangle and the left edge of the video frame.
rX :: Lens' Rectangle (Maybe Int)
rX = lens _rX (\ s a -> s{_rX = a})

-- | The distance, in pixels, between the rectangle and the top edge of the video frame.
rY :: Lens' Rectangle (Maybe Int)
rY = lens _rY (\ s a -> s{_rY = a})

instance FromJSON Rectangle where
        parseJSON
          = withObject "Rectangle"
              (\ x ->
                 Rectangle' <$>
                   (x .:? "height") <*> (x .:? "width") <*> (x .:? "x")
                     <*> (x .:? "y"))

instance Hashable Rectangle where

instance NFData Rectangle where

instance ToJSON Rectangle where
        toJSON Rectangle'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _rHeight,
                  ("width" .=) <$> _rWidth, ("x" .=) <$> _rX,
                  ("y" .=) <$> _rY])
