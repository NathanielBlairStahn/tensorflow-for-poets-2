IMAGE_SIZE=224
ARCHITECTURE="mobilenet_0.50_${IMAGE_SIZE}"

#tensorboard --logdir tf_files/training_summaries &

python -m scripts.retrain \
  --bottleneck_dir=tf_files/bottlenecks \
  --how_many_training_steps=500 \
  --model_dir=tf_files/models/ \
  --summaries_dir=tf_files/training_summaries/"${ARCHITECTURE}" \
  --output_graph=tf_files/tree_graph.pb \
  --output_labels=tf_files/tree_labels.txt \
  --architecture="${ARCHITECTURE}" \
  --image_dir=tf_files/tree_photos
