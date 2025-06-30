from datasets import load_dataset
def test_dataloading():
    data_path = "json"
    data_name = None
    data_dir = None
    data_files = ['/mnt/amlfs-01/home/jingwang//DATASET/mmo1/MM-MathInstruct/conv_noprompt.json']
    dataset_attr_split = "train"
    model_args_cache_dir = None
    model_args_hf_hub_token = None
    data_args_streaming = False
    data_args_preprocessing_num_workers = 32
    model_args_trust_remote_code = False
    
    dataset = load_dataset(
        path=data_path,
        name=data_name,
        data_dir=data_dir,
        data_files=data_files,
        split=dataset_attr_split,
        cache_dir=model_args_cache_dir,
        token=model_args_hf_hub_token,
        streaming=data_args_streaming,
        num_proc=data_args_preprocessing_num_workers,
        trust_remote_code=model_args_trust_remote_code,
    )

if __name__ == "__main__":
    test_dataloading()