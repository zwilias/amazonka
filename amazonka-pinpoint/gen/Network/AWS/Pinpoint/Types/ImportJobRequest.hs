{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ImportJobRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ImportJobRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DefinitionFormat
import Network.AWS.Prelude

-- | /See:/ 'importJobRequest' smart constructor.
data ImportJobRequest = ImportJobRequest'{_iSegmentName
                                          :: !(Maybe Text),
                                          _iFormat :: !(Maybe DefinitionFormat),
                                          _iDefineSegment :: !(Maybe Bool),
                                          _iRegisterEndpoints :: !(Maybe Bool),
                                          _iExternalId :: !(Maybe Text),
                                          _iS3URL :: !(Maybe Text),
                                          _iSegmentId :: !(Maybe Text),
                                          _iRoleARN :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iSegmentName' - A custom name for the segment created by the import job. Use if DefineSegment is true.
--
-- * 'iFormat' - The format of the files that contain the endpoint definitions. Valid values: CSV, JSON
--
-- * 'iDefineSegment' - Sets whether the endpoints create a segment when they are imported.
--
-- * 'iRegisterEndpoints' - Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
--
-- * 'iExternalId' - DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
--
-- * 'iS3URL' - A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file. The URL should follow this format: s3://bucket-name/folder-name/file-name Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
--
-- * 'iSegmentId' - The ID of the segment to update if the import job is meant to update an existing segment.
--
-- * 'iRoleARN' - The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
importJobRequest
    :: ImportJobRequest
importJobRequest
  = ImportJobRequest'{_iSegmentName = Nothing,
                      _iFormat = Nothing, _iDefineSegment = Nothing,
                      _iRegisterEndpoints = Nothing,
                      _iExternalId = Nothing, _iS3URL = Nothing,
                      _iSegmentId = Nothing, _iRoleARN = Nothing}

-- | A custom name for the segment created by the import job. Use if DefineSegment is true.
iSegmentName :: Lens' ImportJobRequest (Maybe Text)
iSegmentName = lens _iSegmentName (\ s a -> s{_iSegmentName = a})

-- | The format of the files that contain the endpoint definitions. Valid values: CSV, JSON
iFormat :: Lens' ImportJobRequest (Maybe DefinitionFormat)
iFormat = lens _iFormat (\ s a -> s{_iFormat = a})

-- | Sets whether the endpoints create a segment when they are imported.
iDefineSegment :: Lens' ImportJobRequest (Maybe Bool)
iDefineSegment = lens _iDefineSegment (\ s a -> s{_iDefineSegment = a})

-- | Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
iRegisterEndpoints :: Lens' ImportJobRequest (Maybe Bool)
iRegisterEndpoints = lens _iRegisterEndpoints (\ s a -> s{_iRegisterEndpoints = a})

-- | DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
iExternalId :: Lens' ImportJobRequest (Maybe Text)
iExternalId = lens _iExternalId (\ s a -> s{_iExternalId = a})

-- | A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file. The URL should follow this format: s3://bucket-name/folder-name/file-name Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
iS3URL :: Lens' ImportJobRequest (Maybe Text)
iS3URL = lens _iS3URL (\ s a -> s{_iS3URL = a})

-- | The ID of the segment to update if the import job is meant to update an existing segment.
iSegmentId :: Lens' ImportJobRequest (Maybe Text)
iSegmentId = lens _iSegmentId (\ s a -> s{_iSegmentId = a})

-- | The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
iRoleARN :: Lens' ImportJobRequest (Maybe Text)
iRoleARN = lens _iRoleARN (\ s a -> s{_iRoleARN = a})

instance Hashable ImportJobRequest where

instance NFData ImportJobRequest where

instance ToJSON ImportJobRequest where
        toJSON ImportJobRequest'{..}
          = object
              (catMaybes
                 [("SegmentName" .=) <$> _iSegmentName,
                  ("Format" .=) <$> _iFormat,
                  ("DefineSegment" .=) <$> _iDefineSegment,
                  ("RegisterEndpoints" .=) <$> _iRegisterEndpoints,
                  ("ExternalId" .=) <$> _iExternalId,
                  ("S3Url" .=) <$> _iS3URL,
                  ("SegmentId" .=) <$> _iSegmentId,
                  ("RoleArn" .=) <$> _iRoleARN])
