{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ImportJobResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ImportJobResource where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.DefinitionFormat
import Network.AWS.Prelude

-- | /See:/ 'importJobResource' smart constructor.
data ImportJobResource = ImportJobResource'{_ijrSegmentName
                                            :: !(Maybe Text),
                                            _ijrFormat ::
                                            !(Maybe DefinitionFormat),
                                            _ijrDefineSegment :: !(Maybe Bool),
                                            _ijrRegisterEndpoints ::
                                            !(Maybe Bool),
                                            _ijrExternalId :: !(Maybe Text),
                                            _ijrS3URL :: !(Maybe Text),
                                            _ijrSegmentId :: !(Maybe Text),
                                            _ijrRoleARN :: !(Maybe Text)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportJobResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijrSegmentName' - A custom name for the segment created by the import job. Use if DefineSegment is true.
--
-- * 'ijrFormat' - The format of the files that contain the endpoint definitions. Valid values: CSV, JSON
--
-- * 'ijrDefineSegment' - Sets whether the endpoints create a segment when they are imported.
--
-- * 'ijrRegisterEndpoints' - Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
--
-- * 'ijrExternalId' - DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
--
-- * 'ijrS3URL' - A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file. The URL should follow this format: s3://bucket-name/folder-name/file-name Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
--
-- * 'ijrSegmentId' - The ID of the segment to update if the import job is meant to update an existing segment.
--
-- * 'ijrRoleARN' - The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
importJobResource
    :: ImportJobResource
importJobResource
  = ImportJobResource'{_ijrSegmentName = Nothing,
                       _ijrFormat = Nothing, _ijrDefineSegment = Nothing,
                       _ijrRegisterEndpoints = Nothing,
                       _ijrExternalId = Nothing, _ijrS3URL = Nothing,
                       _ijrSegmentId = Nothing, _ijrRoleARN = Nothing}

-- | A custom name for the segment created by the import job. Use if DefineSegment is true.
ijrSegmentName :: Lens' ImportJobResource (Maybe Text)
ijrSegmentName = lens _ijrSegmentName (\ s a -> s{_ijrSegmentName = a})

-- | The format of the files that contain the endpoint definitions. Valid values: CSV, JSON
ijrFormat :: Lens' ImportJobResource (Maybe DefinitionFormat)
ijrFormat = lens _ijrFormat (\ s a -> s{_ijrFormat = a})

-- | Sets whether the endpoints create a segment when they are imported.
ijrDefineSegment :: Lens' ImportJobResource (Maybe Bool)
ijrDefineSegment = lens _ijrDefineSegment (\ s a -> s{_ijrDefineSegment = a})

-- | Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
ijrRegisterEndpoints :: Lens' ImportJobResource (Maybe Bool)
ijrRegisterEndpoints = lens _ijrRegisterEndpoints (\ s a -> s{_ijrRegisterEndpoints = a})

-- | DEPRECATED. Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
ijrExternalId :: Lens' ImportJobResource (Maybe Text)
ijrExternalId = lens _ijrExternalId (\ s a -> s{_ijrExternalId = a})

-- | A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file. The URL should follow this format: s3://bucket-name/folder-name/file-name Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
ijrS3URL :: Lens' ImportJobResource (Maybe Text)
ijrS3URL = lens _ijrS3URL (\ s a -> s{_ijrS3URL = a})

-- | The ID of the segment to update if the import job is meant to update an existing segment.
ijrSegmentId :: Lens' ImportJobResource (Maybe Text)
ijrSegmentId = lens _ijrSegmentId (\ s a -> s{_ijrSegmentId = a})

-- | The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
ijrRoleARN :: Lens' ImportJobResource (Maybe Text)
ijrRoleARN = lens _ijrRoleARN (\ s a -> s{_ijrRoleARN = a})

instance FromJSON ImportJobResource where
        parseJSON
          = withObject "ImportJobResource"
              (\ x ->
                 ImportJobResource' <$>
                   (x .:? "SegmentName") <*> (x .:? "Format") <*>
                     (x .:? "DefineSegment")
                     <*> (x .:? "RegisterEndpoints")
                     <*> (x .:? "ExternalId")
                     <*> (x .:? "S3Url")
                     <*> (x .:? "SegmentId")
                     <*> (x .:? "RoleArn"))

instance Hashable ImportJobResource where

instance NFData ImportJobResource where
