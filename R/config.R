# Shared settings for the pipeline.
# The API key is NOT stored here. Put it in a local .Renviron file
# (see .Renviron.example), which is ignored by git.

OPENAI_API_KEY <- Sys.getenv("OPENAI_API_KEY")

# OpenAI-compatible chat completions endpoint.
# The original analysis used Novo Nordisk's internal GenAI gateway.
BASE_URL <- Sys.getenv(
  "LLM_BASE_URL",
  unset = "https://api.marketplace.novo-genai.com/v1/chat/completions"
)

PREDICTION_MODEL <- "openai_gpt4_turbo_128k"  # predicts cell types from markers
JUDGE_MODEL      <- "openai_gpt4o_128k"       # grades predictions vs. annotations

# Analysis settings
TOP_N_GENES         <- 10    # marker genes sent to the LLM per cell type
MAX_RETRIES         <- 2
SAMPLE_SIZE         <- NULL  # NULL = use all cells
MIN_CELLS_PER_GROUP <- 30    # drop organ/cell type groups with fewer cells

# Paths
DATA_DIR       <- "data/tabula_sapiens"
MARKER_LOG_DIR <- "results/marker_logs"
RESULTS_FILE   <- "results/results_predictions.csv"
