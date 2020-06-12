{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentDimensions
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SegmentDimensions where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentLocation
import Network.AWS.Prelude

-- | Segment dimensions
--
-- /See:/ 'segmentDimensions' smart constructor.
data SegmentDimensions = SegmentDimensions'{_sdLocation
                                            :: !(Maybe SegmentLocation),
                                            _sdDemographic ::
                                            !(Maybe SegmentDemographics),
                                            _sdUserAttributes ::
                                            !(Maybe
                                                (Map Text AttributeDimension)),
                                            _sdBehavior ::
                                            !(Maybe SegmentBehaviors),
                                            _sdAttributes ::
                                            !(Maybe
                                                (Map Text AttributeDimension))}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdLocation' - The segment location attributes.
--
-- * 'sdDemographic' - The segment demographics attributes.
--
-- * 'sdUserAttributes' - Custom segment user attributes.
--
-- * 'sdBehavior' - The segment behaviors attributes.
--
-- * 'sdAttributes' - Custom segment attributes.
segmentDimensions
    :: SegmentDimensions
segmentDimensions
  = SegmentDimensions'{_sdLocation = Nothing,
                       _sdDemographic = Nothing,
                       _sdUserAttributes = Nothing, _sdBehavior = Nothing,
                       _sdAttributes = Nothing}

-- | The segment location attributes.
sdLocation :: Lens' SegmentDimensions (Maybe SegmentLocation)
sdLocation = lens _sdLocation (\ s a -> s{_sdLocation = a})

-- | The segment demographics attributes.
sdDemographic :: Lens' SegmentDimensions (Maybe SegmentDemographics)
sdDemographic = lens _sdDemographic (\ s a -> s{_sdDemographic = a})

-- | Custom segment user attributes.
sdUserAttributes :: Lens' SegmentDimensions (HashMap Text AttributeDimension)
sdUserAttributes = lens _sdUserAttributes (\ s a -> s{_sdUserAttributes = a}) . _Default . _Map

-- | The segment behaviors attributes.
sdBehavior :: Lens' SegmentDimensions (Maybe SegmentBehaviors)
sdBehavior = lens _sdBehavior (\ s a -> s{_sdBehavior = a})

-- | Custom segment attributes.
sdAttributes :: Lens' SegmentDimensions (HashMap Text AttributeDimension)
sdAttributes = lens _sdAttributes (\ s a -> s{_sdAttributes = a}) . _Default . _Map

instance FromJSON SegmentDimensions where
        parseJSON
          = withObject "SegmentDimensions"
              (\ x ->
                 SegmentDimensions' <$>
                   (x .:? "Location") <*> (x .:? "Demographic") <*>
                     (x .:? "UserAttributes" .!= mempty)
                     <*> (x .:? "Behavior")
                     <*> (x .:? "Attributes" .!= mempty))

instance Hashable SegmentDimensions where

instance NFData SegmentDimensions where

instance ToJSON SegmentDimensions where
        toJSON SegmentDimensions'{..}
          = object
              (catMaybes
                 [("Location" .=) <$> _sdLocation,
                  ("Demographic" .=) <$> _sdDemographic,
                  ("UserAttributes" .=) <$> _sdUserAttributes,
                  ("Behavior" .=) <$> _sdBehavior,
                  ("Attributes" .=) <$> _sdAttributes])
