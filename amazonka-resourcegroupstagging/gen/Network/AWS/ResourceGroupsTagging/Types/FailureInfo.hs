{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types.FailureInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ResourceGroupsTagging.Types.FailureInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroupsTagging.Types.ResourceErrorCode

-- | Details of the common errors that all actions return.
--
--
--
-- /See:/ 'failureInfo' smart constructor.
data FailureInfo = FailureInfo'{_fiErrorCode ::
                                !(Maybe ResourceErrorCode),
                                _fiErrorMessage :: !(Maybe Text),
                                _fiStatusCode :: !(Maybe Int)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FailureInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiErrorCode' - The code of the common error. Valid values include @InternalServiceException@ , @InvalidParameterException@ , and any valid error code returned by the AWS service that hosts the resource that you want to tag.
--
-- * 'fiErrorMessage' - The message of the common error.
--
-- * 'fiStatusCode' - The HTTP status code of the common error.
failureInfo
    :: FailureInfo
failureInfo
  = FailureInfo'{_fiErrorCode = Nothing,
                 _fiErrorMessage = Nothing, _fiStatusCode = Nothing}

-- | The code of the common error. Valid values include @InternalServiceException@ , @InvalidParameterException@ , and any valid error code returned by the AWS service that hosts the resource that you want to tag.
fiErrorCode :: Lens' FailureInfo (Maybe ResourceErrorCode)
fiErrorCode = lens _fiErrorCode (\ s a -> s{_fiErrorCode = a})

-- | The message of the common error.
fiErrorMessage :: Lens' FailureInfo (Maybe Text)
fiErrorMessage = lens _fiErrorMessage (\ s a -> s{_fiErrorMessage = a})

-- | The HTTP status code of the common error.
fiStatusCode :: Lens' FailureInfo (Maybe Int)
fiStatusCode = lens _fiStatusCode (\ s a -> s{_fiStatusCode = a})

instance FromJSON FailureInfo where
        parseJSON
          = withObject "FailureInfo"
              (\ x ->
                 FailureInfo' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "StatusCode"))

instance Hashable FailureInfo where

instance NFData FailureInfo where
