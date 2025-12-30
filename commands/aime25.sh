lm_eval run \
  --model hf \
  --model_args '{"pretrained":"Qwen/Qwen3-4B-Thinking-2507","dtype":"auto","think_end_token":"</think>"}' \
  --gen_kwargs max_gen_toks=81920 do_sample=True temperature=0.6 top_p=0.95 top_k=20 min_p=0 \
  --tasks aime25 \
  --apply_chat_template \
  --fewshot_as_multiturn \
  --output_path results \
  "$@"