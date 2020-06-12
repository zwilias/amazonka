{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lambda.Types.FunctionConfiguration where

import Network.AWS.Lambda.Types.DeadLetterConfig
import Network.AWS.Lambda.Types.EnvironmentResponse
import Network.AWS.Lambda.Types.Runtime
import Network.AWS.Lambda.Types.TracingConfigResponse
import Network.AWS.Lambda.Types.VPCConfigResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A complex type that describes function metadata.
--
--
--
-- /See:/ 'functionConfiguration' smart constructor.
data FunctionConfiguration = FunctionConfiguration'{_fcMemorySize
                                                    :: !(Maybe Nat),
                                                    _fcRuntime ::
                                                    !(Maybe Runtime),
                                                    _fcFunctionARN ::
                                                    !(Maybe Text),
                                                    _fcKMSKeyARN ::
                                                    !(Maybe Text),
                                                    _fcEnvironment ::
                                                    !(Maybe
                                                        EnvironmentResponse),
                                                    _fcDeadLetterConfig ::
                                                    !(Maybe DeadLetterConfig),
                                                    _fcRole :: !(Maybe Text),
                                                    _fcVPCConfig ::
                                                    !(Maybe VPCConfigResponse),
                                                    _fcVersion :: !(Maybe Text),
                                                    _fcFunctionName ::
                                                    !(Maybe Text),
                                                    _fcCodeSize ::
                                                    !(Maybe Integer),
                                                    _fcHandler :: !(Maybe Text),
                                                    _fcTimeout :: !(Maybe Nat),
                                                    _fcLastModified ::
                                                    !(Maybe Text),
                                                    _fcCodeSha256 ::
                                                    !(Maybe Text),
                                                    _fcTracingConfig ::
                                                    !(Maybe
                                                        TracingConfigResponse),
                                                    _fcDescription ::
                                                    !(Maybe Text),
                                                    _fcRevisionId ::
                                                    !(Maybe Text),
                                                    _fcMasterARN ::
                                                    !(Maybe Text)}
                               deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcMemorySize' - The memory size, in MB, you configured for the function. Must be a multiple of 64 MB.
--
-- * 'fcRuntime' - The runtime environment for the Lambda function.
--
-- * 'fcFunctionARN' - The Amazon Resource Name (ARN) assigned to the function.
--
-- * 'fcKMSKeyARN' - The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If empty, it means you are using the AWS Lambda default service key.
--
-- * 'fcEnvironment' - The parent object that contains your environment's configuration settings.
--
-- * 'fcDeadLetterConfig' - The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. For more information, see 'dlq' . 
--
-- * 'fcRole' - The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources.
--
-- * 'fcVPCConfig' - VPC configuration associated with your Lambda function.
--
-- * 'fcVersion' - The version of the Lambda function.
--
-- * 'fcFunctionName' - The name of the function. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'fcCodeSize' - The size, in bytes, of the function .zip file you uploaded.
--
-- * 'fcHandler' - The function Lambda calls to begin executing your function.
--
-- * 'fcTimeout' - The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.
--
-- * 'fcLastModified' - The time stamp of the last time you updated the function. The time stamp is conveyed as a string complying with ISO-8601 in this way YYYY-MM-DDThh:mm:ssTZD (e.g., 1997-07-16T19:20:30+01:00). For more information, see <https://www.w3.org/TR/NOTE-datetime Date and Time Formats> .
--
-- * 'fcCodeSha256' - It is the SHA256 hash of your function deployment package.
--
-- * 'fcTracingConfig' - The parent object that contains your function's tracing settings.
--
-- * 'fcDescription' - The user-provided description.
--
-- * 'fcRevisionId' - Represents the latest updated revision of the function or alias.
--
-- * 'fcMasterARN' - Returns the ARN (Amazon Resource Name) of the master function.
functionConfiguration
    :: FunctionConfiguration
functionConfiguration
  = FunctionConfiguration'{_fcMemorySize = Nothing,
                           _fcRuntime = Nothing, _fcFunctionARN = Nothing,
                           _fcKMSKeyARN = Nothing, _fcEnvironment = Nothing,
                           _fcDeadLetterConfig = Nothing, _fcRole = Nothing,
                           _fcVPCConfig = Nothing, _fcVersion = Nothing,
                           _fcFunctionName = Nothing, _fcCodeSize = Nothing,
                           _fcHandler = Nothing, _fcTimeout = Nothing,
                           _fcLastModified = Nothing, _fcCodeSha256 = Nothing,
                           _fcTracingConfig = Nothing, _fcDescription = Nothing,
                           _fcRevisionId = Nothing, _fcMasterARN = Nothing}

-- | The memory size, in MB, you configured for the function. Must be a multiple of 64 MB.
fcMemorySize :: Lens' FunctionConfiguration (Maybe Natural)
fcMemorySize = lens _fcMemorySize (\ s a -> s{_fcMemorySize = a}) . mapping _Nat

-- | The runtime environment for the Lambda function.
fcRuntime :: Lens' FunctionConfiguration (Maybe Runtime)
fcRuntime = lens _fcRuntime (\ s a -> s{_fcRuntime = a})

-- | The Amazon Resource Name (ARN) assigned to the function.
fcFunctionARN :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionARN = lens _fcFunctionARN (\ s a -> s{_fcFunctionARN = a})

-- | The Amazon Resource Name (ARN) of the KMS key used to encrypt your function's environment variables. If empty, it means you are using the AWS Lambda default service key.
fcKMSKeyARN :: Lens' FunctionConfiguration (Maybe Text)
fcKMSKeyARN = lens _fcKMSKeyARN (\ s a -> s{_fcKMSKeyARN = a})

-- | The parent object that contains your environment's configuration settings.
fcEnvironment :: Lens' FunctionConfiguration (Maybe EnvironmentResponse)
fcEnvironment = lens _fcEnvironment (\ s a -> s{_fcEnvironment = a})

-- | The parent object that contains the target ARN (Amazon Resource Name) of an Amazon SQS queue or Amazon SNS topic. For more information, see 'dlq' . 
fcDeadLetterConfig :: Lens' FunctionConfiguration (Maybe DeadLetterConfig)
fcDeadLetterConfig = lens _fcDeadLetterConfig (\ s a -> s{_fcDeadLetterConfig = a})

-- | The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources.
fcRole :: Lens' FunctionConfiguration (Maybe Text)
fcRole = lens _fcRole (\ s a -> s{_fcRole = a})

-- | VPC configuration associated with your Lambda function.
fcVPCConfig :: Lens' FunctionConfiguration (Maybe VPCConfigResponse)
fcVPCConfig = lens _fcVPCConfig (\ s a -> s{_fcVPCConfig = a})

-- | The version of the Lambda function.
fcVersion :: Lens' FunctionConfiguration (Maybe Text)
fcVersion = lens _fcVersion (\ s a -> s{_fcVersion = a})

-- | The name of the function. Note that the length constraint applies only to the ARN. If you specify only the function name, it is limited to 64 characters in length.
fcFunctionName :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionName = lens _fcFunctionName (\ s a -> s{_fcFunctionName = a})

-- | The size, in bytes, of the function .zip file you uploaded.
fcCodeSize :: Lens' FunctionConfiguration (Maybe Integer)
fcCodeSize = lens _fcCodeSize (\ s a -> s{_fcCodeSize = a})

-- | The function Lambda calls to begin executing your function.
fcHandler :: Lens' FunctionConfiguration (Maybe Text)
fcHandler = lens _fcHandler (\ s a -> s{_fcHandler = a})

-- | The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds.
fcTimeout :: Lens' FunctionConfiguration (Maybe Natural)
fcTimeout = lens _fcTimeout (\ s a -> s{_fcTimeout = a}) . mapping _Nat

-- | The time stamp of the last time you updated the function. The time stamp is conveyed as a string complying with ISO-8601 in this way YYYY-MM-DDThh:mm:ssTZD (e.g., 1997-07-16T19:20:30+01:00). For more information, see <https://www.w3.org/TR/NOTE-datetime Date and Time Formats> .
fcLastModified :: Lens' FunctionConfiguration (Maybe Text)
fcLastModified = lens _fcLastModified (\ s a -> s{_fcLastModified = a})

-- | It is the SHA256 hash of your function deployment package.
fcCodeSha256 :: Lens' FunctionConfiguration (Maybe Text)
fcCodeSha256 = lens _fcCodeSha256 (\ s a -> s{_fcCodeSha256 = a})

-- | The parent object that contains your function's tracing settings.
fcTracingConfig :: Lens' FunctionConfiguration (Maybe TracingConfigResponse)
fcTracingConfig = lens _fcTracingConfig (\ s a -> s{_fcTracingConfig = a})

-- | The user-provided description.
fcDescription :: Lens' FunctionConfiguration (Maybe Text)
fcDescription = lens _fcDescription (\ s a -> s{_fcDescription = a})

-- | Represents the latest updated revision of the function or alias.
fcRevisionId :: Lens' FunctionConfiguration (Maybe Text)
fcRevisionId = lens _fcRevisionId (\ s a -> s{_fcRevisionId = a})

-- | Returns the ARN (Amazon Resource Name) of the master function.
fcMasterARN :: Lens' FunctionConfiguration (Maybe Text)
fcMasterARN = lens _fcMasterARN (\ s a -> s{_fcMasterARN = a})

instance FromJSON FunctionConfiguration where
        parseJSON
          = withObject "FunctionConfiguration"
              (\ x ->
                 FunctionConfiguration' <$>
                   (x .:? "MemorySize") <*> (x .:? "Runtime") <*>
                     (x .:? "FunctionArn")
                     <*> (x .:? "KMSKeyArn")
                     <*> (x .:? "Environment")
                     <*> (x .:? "DeadLetterConfig")
                     <*> (x .:? "Role")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "Version")
                     <*> (x .:? "FunctionName")
                     <*> (x .:? "CodeSize")
                     <*> (x .:? "Handler")
                     <*> (x .:? "Timeout")
                     <*> (x .:? "LastModified")
                     <*> (x .:? "CodeSha256")
                     <*> (x .:? "TracingConfig")
                     <*> (x .:? "Description")
                     <*> (x .:? "RevisionId")
                     <*> (x .:? "MasterArn"))

instance Hashable FunctionConfiguration where

instance NFData FunctionConfiguration where
