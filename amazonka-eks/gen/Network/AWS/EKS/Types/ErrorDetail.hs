{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.ErrorDetail
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.ErrorDetail where

import Network.AWS.EKS.Types.EKSErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an error when an asynchronous operation fails.
--
--
--
-- /See:/ 'errorDetail' smart constructor.
data ErrorDetail = ErrorDetail'{_edResourceIds ::
                                !(Maybe [Text]),
                                _edErrorCode :: !(Maybe EKSErrorCode),
                                _edErrorMessage :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edResourceIds' - An optional field that contains the resource IDs associated with the error.
--
-- * 'edErrorCode' - A brief description of the error.      * __SubnetNotFound__ : We couldn't find one of the subnets associated with the cluster.     * __SecurityGroupNotFound__ : We couldn't find one of the security groups associated with the cluster.     * __EniLimitReached__ : You have reached the elastic network interface limit for your account.     * __IpNotAvailable__ : A subnet associated with the cluster doesn't have any free IP addresses.     * __AccessDenied__ : You don't have permissions to perform the specified operation.     * __OperationNotPermitted__ : The service role associated with the cluster doesn't have the required access permissions for Amazon EKS.     * __VpcIdNotFound__ : We couldn't find the VPC associated with the cluster.
--
-- * 'edErrorMessage' - A more complete description of the error.
errorDetail
    :: ErrorDetail
errorDetail
  = ErrorDetail'{_edResourceIds = Nothing,
                 _edErrorCode = Nothing, _edErrorMessage = Nothing}

-- | An optional field that contains the resource IDs associated with the error.
edResourceIds :: Lens' ErrorDetail [Text]
edResourceIds = lens _edResourceIds (\ s a -> s{_edResourceIds = a}) . _Default . _Coerce

-- | A brief description of the error.      * __SubnetNotFound__ : We couldn't find one of the subnets associated with the cluster.     * __SecurityGroupNotFound__ : We couldn't find one of the security groups associated with the cluster.     * __EniLimitReached__ : You have reached the elastic network interface limit for your account.     * __IpNotAvailable__ : A subnet associated with the cluster doesn't have any free IP addresses.     * __AccessDenied__ : You don't have permissions to perform the specified operation.     * __OperationNotPermitted__ : The service role associated with the cluster doesn't have the required access permissions for Amazon EKS.     * __VpcIdNotFound__ : We couldn't find the VPC associated with the cluster.
edErrorCode :: Lens' ErrorDetail (Maybe EKSErrorCode)
edErrorCode = lens _edErrorCode (\ s a -> s{_edErrorCode = a})

-- | A more complete description of the error.
edErrorMessage :: Lens' ErrorDetail (Maybe Text)
edErrorMessage = lens _edErrorMessage (\ s a -> s{_edErrorMessage = a})

instance FromJSON ErrorDetail where
        parseJSON
          = withObject "ErrorDetail"
              (\ x ->
                 ErrorDetail' <$>
                   (x .:? "resourceIds" .!= mempty) <*>
                     (x .:? "errorCode")
                     <*> (x .:? "errorMessage"))

instance Hashable ErrorDetail where

instance NFData ErrorDetail where
