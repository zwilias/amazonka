{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ExportJobRequest
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ExportJobRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'exportJobRequest' smart constructor.
data ExportJobRequest = ExportJobRequest'{_eS3URLPrefix
                                          :: !(Maybe Text),
                                          _eSegmentId :: !(Maybe Text),
                                          _eRoleARN :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eS3URLPrefix' - A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files. The URL should follow this format: s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints to this location.
--
-- * 'eSegmentId' - The ID of the segment to export endpoints from. If not present all endpoints will be exported.
--
-- * 'eRoleARN' - The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
exportJobRequest
    :: ExportJobRequest
exportJobRequest
  = ExportJobRequest'{_eS3URLPrefix = Nothing,
                      _eSegmentId = Nothing, _eRoleARN = Nothing}

-- | A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files. The URL should follow this format: s3://bucket-name/folder-name/ Amazon Pinpoint will export endpoints to this location.
eS3URLPrefix :: Lens' ExportJobRequest (Maybe Text)
eS3URLPrefix = lens _eS3URLPrefix (\ s a -> s{_eS3URLPrefix = a})

-- | The ID of the segment to export endpoints from. If not present all endpoints will be exported.
eSegmentId :: Lens' ExportJobRequest (Maybe Text)
eSegmentId = lens _eSegmentId (\ s a -> s{_eSegmentId = a})

-- | The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
eRoleARN :: Lens' ExportJobRequest (Maybe Text)
eRoleARN = lens _eRoleARN (\ s a -> s{_eRoleARN = a})

instance Hashable ExportJobRequest where

instance NFData ExportJobRequest where

instance ToJSON ExportJobRequest where
        toJSON ExportJobRequest'{..}
          = object
              (catMaybes
                 [("S3UrlPrefix" .=) <$> _eS3URLPrefix,
                  ("SegmentId" .=) <$> _eSegmentId,
                  ("RoleArn" .=) <$> _eRoleARN])
