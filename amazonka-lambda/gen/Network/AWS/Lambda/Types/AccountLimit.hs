{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.AccountLimit
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.AccountLimit where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides limits of code size and concurrency associated with the current account and region.
--
--
--
-- /See:/ 'accountLimit' smart constructor.
data AccountLimit = AccountLimit'{_alConcurrentExecutions
                                  :: !(Maybe Int),
                                  _alTotalCodeSize :: !(Maybe Integer),
                                  _alUnreservedConcurrentExecutions ::
                                  !(Maybe Nat),
                                  _alCodeSizeUnzipped :: !(Maybe Integer),
                                  _alCodeSizeZipped :: !(Maybe Integer)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alConcurrentExecutions' - Number of simultaneous executions of your function per region. For more information or to request a limit increase for concurrent executions, see <http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html Lambda Function Concurrent Executions> . The default limit is 1000.
--
-- * 'alTotalCodeSize' - Maximum size, in bytes, of a code package you can upload per region. The default size is 75 GB. 
--
-- * 'alUnreservedConcurrentExecutions' - The number of concurrent executions available to functions that do not have concurrency limits set. For more information, see 'concurrent-executions' .
--
-- * 'alCodeSizeUnzipped' - Size, in bytes, of code/dependencies that you can zip into a deployment package (uncompressed zip/jar size) for uploading. The default limit is 250 MB.
--
-- * 'alCodeSizeZipped' - Size, in bytes, of a single zipped code/dependencies package you can upload for your Lambda function(.zip/.jar file). Try using Amazon S3 for uploading larger files. Default limit is 50 MB.
accountLimit
    :: AccountLimit
accountLimit
  = AccountLimit'{_alConcurrentExecutions = Nothing,
                  _alTotalCodeSize = Nothing,
                  _alUnreservedConcurrentExecutions = Nothing,
                  _alCodeSizeUnzipped = Nothing,
                  _alCodeSizeZipped = Nothing}

-- | Number of simultaneous executions of your function per region. For more information or to request a limit increase for concurrent executions, see <http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html Lambda Function Concurrent Executions> . The default limit is 1000.
alConcurrentExecutions :: Lens' AccountLimit (Maybe Int)
alConcurrentExecutions = lens _alConcurrentExecutions (\ s a -> s{_alConcurrentExecutions = a})

-- | Maximum size, in bytes, of a code package you can upload per region. The default size is 75 GB. 
alTotalCodeSize :: Lens' AccountLimit (Maybe Integer)
alTotalCodeSize = lens _alTotalCodeSize (\ s a -> s{_alTotalCodeSize = a})

-- | The number of concurrent executions available to functions that do not have concurrency limits set. For more information, see 'concurrent-executions' .
alUnreservedConcurrentExecutions :: Lens' AccountLimit (Maybe Natural)
alUnreservedConcurrentExecutions = lens _alUnreservedConcurrentExecutions (\ s a -> s{_alUnreservedConcurrentExecutions = a}) . mapping _Nat

-- | Size, in bytes, of code/dependencies that you can zip into a deployment package (uncompressed zip/jar size) for uploading. The default limit is 250 MB.
alCodeSizeUnzipped :: Lens' AccountLimit (Maybe Integer)
alCodeSizeUnzipped = lens _alCodeSizeUnzipped (\ s a -> s{_alCodeSizeUnzipped = a})

-- | Size, in bytes, of a single zipped code/dependencies package you can upload for your Lambda function(.zip/.jar file). Try using Amazon S3 for uploading larger files. Default limit is 50 MB.
alCodeSizeZipped :: Lens' AccountLimit (Maybe Integer)
alCodeSizeZipped = lens _alCodeSizeZipped (\ s a -> s{_alCodeSizeZipped = a})

instance FromJSON AccountLimit where
        parseJSON
          = withObject "AccountLimit"
              (\ x ->
                 AccountLimit' <$>
                   (x .:? "ConcurrentExecutions") <*>
                     (x .:? "TotalCodeSize")
                     <*> (x .:? "UnreservedConcurrentExecutions")
                     <*> (x .:? "CodeSizeUnzipped")
                     <*> (x .:? "CodeSizeZipped"))

instance Hashable AccountLimit where

instance NFData AccountLimit where
