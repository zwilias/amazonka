{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AlgorithmSpecification
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.AlgorithmSpecification where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrainingInputMode

-- | Specifies the training algorithm to use in a <http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateTrainingJob.html CreateTrainingJob> request. 
--
--
-- For more information about algorithms provided by Amazon SageMaker, see <http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> . For information about using your own algorithms, see 'your-algorithms' . 
--
--
-- /See:/ 'algorithmSpecification' smart constructor.
data AlgorithmSpecification = AlgorithmSpecification'{_asTrainingImage
                                                      :: !Text,
                                                      _asTrainingInputMode ::
                                                      !TrainingInputMode}
                                deriving (Eq, Read, Show, Data, Typeable,
                                          Generic)

-- | Creates a value of 'AlgorithmSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asTrainingImage' - The registry path of the Docker image that contains the training algorithm. For information about docker registry paths for built-in algorithms, see 'sagemaker-algo-docker-registry-paths' .
--
-- * 'asTrainingInputMode' - The input mode that the algorithm supports. For the input modes that Amazon SageMaker algorithms support, see <http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> . If an algorithm supports the @File@ input mode, Amazon SageMaker downloads the training data from S3 to the provisioned ML storage Volume, and mounts the directory to docker volume for training container. If an algorithm supports the @Pipe@ input mode, Amazon SageMaker streams data directly from S3 to the container.  In File mode, make sure you provision ML storage volume with sufficient capacity to accommodate the data download from S3. In addition to the training data, the ML storage volume also stores the output model. The algorithm container use ML storage volume to also store intermediate information, if any.  For distributed algorithms using File mode, training data is distributed uniformly, and your training duration is predictable if the input data objects size is approximately same. Amazon SageMaker does not split the files any further for model training. If the object sizes are skewed, training won't be optimal as the data distribution is also skewed where one host in a training cluster is overloaded, thus becoming bottleneck in training. 
algorithmSpecification
    :: Text -- ^ 'asTrainingImage'
    -> TrainingInputMode -- ^ 'asTrainingInputMode'
    -> AlgorithmSpecification
algorithmSpecification pTrainingImage_
  pTrainingInputMode_
  = AlgorithmSpecification'{_asTrainingImage =
                              pTrainingImage_,
                            _asTrainingInputMode = pTrainingInputMode_}

-- | The registry path of the Docker image that contains the training algorithm. For information about docker registry paths for built-in algorithms, see 'sagemaker-algo-docker-registry-paths' .
asTrainingImage :: Lens' AlgorithmSpecification Text
asTrainingImage = lens _asTrainingImage (\ s a -> s{_asTrainingImage = a})

-- | The input mode that the algorithm supports. For the input modes that Amazon SageMaker algorithms support, see <http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms> . If an algorithm supports the @File@ input mode, Amazon SageMaker downloads the training data from S3 to the provisioned ML storage Volume, and mounts the directory to docker volume for training container. If an algorithm supports the @Pipe@ input mode, Amazon SageMaker streams data directly from S3 to the container.  In File mode, make sure you provision ML storage volume with sufficient capacity to accommodate the data download from S3. In addition to the training data, the ML storage volume also stores the output model. The algorithm container use ML storage volume to also store intermediate information, if any.  For distributed algorithms using File mode, training data is distributed uniformly, and your training duration is predictable if the input data objects size is approximately same. Amazon SageMaker does not split the files any further for model training. If the object sizes are skewed, training won't be optimal as the data distribution is also skewed where one host in a training cluster is overloaded, thus becoming bottleneck in training. 
asTrainingInputMode :: Lens' AlgorithmSpecification TrainingInputMode
asTrainingInputMode = lens _asTrainingInputMode (\ s a -> s{_asTrainingInputMode = a})

instance FromJSON AlgorithmSpecification where
        parseJSON
          = withObject "AlgorithmSpecification"
              (\ x ->
                 AlgorithmSpecification' <$>
                   (x .: "TrainingImage") <*>
                     (x .: "TrainingInputMode"))

instance Hashable AlgorithmSpecification where

instance NFData AlgorithmSpecification where

instance ToJSON AlgorithmSpecification where
        toJSON AlgorithmSpecification'{..}
          = object
              (catMaybes
                 [Just ("TrainingImage" .= _asTrainingImage),
                  Just ("TrainingInputMode" .= _asTrainingInputMode)])
