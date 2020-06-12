{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentImportResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.SegmentImportResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DefinitionFormat
import Network.AWS.Prelude

-- | Segment import definition.
--
-- /See:/ 'segmentImportResource' smart constructor.
data SegmentImportResource = SegmentImportResource'{_sirSize
                                                    :: !(Maybe Int),
                                                    _sirFormat ::
                                                    !(Maybe DefinitionFormat),
                                                    _sirChannelCounts ::
                                                    !(Maybe (Map Text Int)),
                                                    _sirExternalId ::
                                                    !(Maybe Text),
                                                    _sirS3URL :: !(Maybe Text),
                                                    _sirRoleARN ::
                                                    !(Maybe Text)}
                               deriving (Eq, Read, Show, Data, Typeable,
                                         Generic)

-- | Creates a value of 'SegmentImportResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirSize' - The number of endpoints that were successfully imported to create this segment.
--
-- * 'sirFormat' - The format of the endpoint files that were imported to create this segment. Valid values: CSV, JSON
--
-- * 'sirChannelCounts' - Channel type counts
--
-- * 'sirExternalId' - DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
--
-- * 'sirS3URL' - A URL that points to the Amazon S3 location from which the endpoints for this segment were imported.
--
-- * 'sirRoleARN' - The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the endpoints in Amazon S3.
segmentImportResource
    :: SegmentImportResource
segmentImportResource
  = SegmentImportResource'{_sirSize = Nothing,
                           _sirFormat = Nothing, _sirChannelCounts = Nothing,
                           _sirExternalId = Nothing, _sirS3URL = Nothing,
                           _sirRoleARN = Nothing}

-- | The number of endpoints that were successfully imported to create this segment.
sirSize :: Lens' SegmentImportResource (Maybe Int)
sirSize = lens _sirSize (\ s a -> s{_sirSize = a})

-- | The format of the endpoint files that were imported to create this segment. Valid values: CSV, JSON
sirFormat :: Lens' SegmentImportResource (Maybe DefinitionFormat)
sirFormat = lens _sirFormat (\ s a -> s{_sirFormat = a})

-- | Channel type counts
sirChannelCounts :: Lens' SegmentImportResource (HashMap Text Int)
sirChannelCounts = lens _sirChannelCounts (\ s a -> s{_sirChannelCounts = a}) . _Default . _Map

-- | DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
sirExternalId :: Lens' SegmentImportResource (Maybe Text)
sirExternalId = lens _sirExternalId (\ s a -> s{_sirExternalId = a})

-- | A URL that points to the Amazon S3 location from which the endpoints for this segment were imported.
sirS3URL :: Lens' SegmentImportResource (Maybe Text)
sirS3URL = lens _sirS3URL (\ s a -> s{_sirS3URL = a})

-- | The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the endpoints in Amazon S3.
sirRoleARN :: Lens' SegmentImportResource (Maybe Text)
sirRoleARN = lens _sirRoleARN (\ s a -> s{_sirRoleARN = a})

instance FromJSON SegmentImportResource where
        parseJSON
          = withObject "SegmentImportResource"
              (\ x ->
                 SegmentImportResource' <$>
                   (x .:? "Size") <*> (x .:? "Format") <*>
                     (x .:? "ChannelCounts" .!= mempty)
                     <*> (x .:? "ExternalId")
                     <*> (x .:? "S3Url")
                     <*> (x .:? "RoleArn"))

instance Hashable SegmentImportResource where

instance NFData SegmentImportResource where
