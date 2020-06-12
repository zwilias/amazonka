{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ExportJobResource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ExportJobResource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'exportJobResource' smart constructor.
data ExportJobResource = ExportJobResource'{_ejrS3URLPrefix
                                            :: !(Maybe Text),
                                            _ejrSegmentId :: !(Maybe Text),
                                            _ejrRoleARN :: !(Maybe Text)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportJobResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejrS3URLPrefix' - A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files. The URL should follow this format: s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints to this location.
--
-- * 'ejrSegmentId' - The ID of the segment to export endpoints from. If not present, all endpoints are exported.
--
-- * 'ejrRoleARN' - The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
exportJobResource
    :: ExportJobResource
exportJobResource
  = ExportJobResource'{_ejrS3URLPrefix = Nothing,
                       _ejrSegmentId = Nothing, _ejrRoleARN = Nothing}

-- | A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files. The URL should follow this format: s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints to this location.
ejrS3URLPrefix :: Lens' ExportJobResource (Maybe Text)
ejrS3URLPrefix = lens _ejrS3URLPrefix (\ s a -> s{_ejrS3URLPrefix = a})

-- | The ID of the segment to export endpoints from. If not present, all endpoints are exported.
ejrSegmentId :: Lens' ExportJobResource (Maybe Text)
ejrSegmentId = lens _ejrSegmentId (\ s a -> s{_ejrSegmentId = a})

-- | The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
ejrRoleARN :: Lens' ExportJobResource (Maybe Text)
ejrRoleARN = lens _ejrRoleARN (\ s a -> s{_ejrRoleARN = a})

instance FromJSON ExportJobResource where
        parseJSON
          = withObject "ExportJobResource"
              (\ x ->
                 ExportJobResource' <$>
                   (x .:? "S3UrlPrefix") <*> (x .:? "SegmentId") <*>
                     (x .:? "RoleArn"))

instance Hashable ExportJobResource where

instance NFData ExportJobResource where
