{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SegmentResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentType
import Network.AWS.Prelude

-- | Segment definition.
--
-- /See:/ 'segmentResponse' smart constructor.
data SegmentResponse = SegmentResponse'{_sLastModifiedDate
                                        :: !(Maybe Text),
                                        _sSegmentType :: !(Maybe SegmentType),
                                        _sApplicationId :: !(Maybe Text),
                                        _sName :: !(Maybe Text),
                                        _sVersion :: !(Maybe Int),
                                        _sId :: !(Maybe Text),
                                        _sCreationDate :: !(Maybe Text),
                                        _sImportDefinition ::
                                        !(Maybe SegmentImportResource),
                                        _sDimensions ::
                                        !(Maybe SegmentDimensions)}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sLastModifiedDate' - The date the segment was last updated in ISO 8601 format.
--
-- * 'sSegmentType' - The segment type: DIMENSIONAL - A dynamic segment built from selection criteria based on endpoint data reported by your app. You create this type of segment by using the segment builder in the Amazon Pinpoint console or by making a POST request to the segments resource. IMPORT - A static segment built from an imported set of endpoint definitions. You create this type of segment by importing a segment in the Amazon Pinpoint console or by making a POST request to the jobs/import resource.
--
-- * 'sApplicationId' - The ID of the application to which the segment applies.
--
-- * 'sName' - The name of segment
--
-- * 'sVersion' - The segment version number.
--
-- * 'sId' - The unique segment ID.
--
-- * 'sCreationDate' - The date the segment was created in ISO 8601 format.
--
-- * 'sImportDefinition' - The import job settings.
--
-- * 'sDimensions' - The segment dimensions attributes.
segmentResponse
    :: SegmentResponse
segmentResponse
  = SegmentResponse'{_sLastModifiedDate = Nothing,
                     _sSegmentType = Nothing, _sApplicationId = Nothing,
                     _sName = Nothing, _sVersion = Nothing,
                     _sId = Nothing, _sCreationDate = Nothing,
                     _sImportDefinition = Nothing, _sDimensions = Nothing}

-- | The date the segment was last updated in ISO 8601 format.
sLastModifiedDate :: Lens' SegmentResponse (Maybe Text)
sLastModifiedDate = lens _sLastModifiedDate (\ s a -> s{_sLastModifiedDate = a})

-- | The segment type: DIMENSIONAL - A dynamic segment built from selection criteria based on endpoint data reported by your app. You create this type of segment by using the segment builder in the Amazon Pinpoint console or by making a POST request to the segments resource. IMPORT - A static segment built from an imported set of endpoint definitions. You create this type of segment by importing a segment in the Amazon Pinpoint console or by making a POST request to the jobs/import resource.
sSegmentType :: Lens' SegmentResponse (Maybe SegmentType)
sSegmentType = lens _sSegmentType (\ s a -> s{_sSegmentType = a})

-- | The ID of the application to which the segment applies.
sApplicationId :: Lens' SegmentResponse (Maybe Text)
sApplicationId = lens _sApplicationId (\ s a -> s{_sApplicationId = a})

-- | The name of segment
sName :: Lens' SegmentResponse (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The segment version number.
sVersion :: Lens' SegmentResponse (Maybe Int)
sVersion = lens _sVersion (\ s a -> s{_sVersion = a})

-- | The unique segment ID.
sId :: Lens' SegmentResponse (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The date the segment was created in ISO 8601 format.
sCreationDate :: Lens' SegmentResponse (Maybe Text)
sCreationDate = lens _sCreationDate (\ s a -> s{_sCreationDate = a})

-- | The import job settings.
sImportDefinition :: Lens' SegmentResponse (Maybe SegmentImportResource)
sImportDefinition = lens _sImportDefinition (\ s a -> s{_sImportDefinition = a})

-- | The segment dimensions attributes.
sDimensions :: Lens' SegmentResponse (Maybe SegmentDimensions)
sDimensions = lens _sDimensions (\ s a -> s{_sDimensions = a})

instance FromJSON SegmentResponse where
        parseJSON
          = withObject "SegmentResponse"
              (\ x ->
                 SegmentResponse' <$>
                   (x .:? "LastModifiedDate") <*> (x .:? "SegmentType")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Name")
                     <*> (x .:? "Version")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "ImportDefinition")
                     <*> (x .:? "Dimensions"))

instance Hashable SegmentResponse where

instance NFData SegmentResponse where
