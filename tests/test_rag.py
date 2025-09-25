import os
from src.rag.retriever import Retriever


def test_retriever_build_and_query(tmp_path):
    fp = tmp_path / "material.txt"
    fp.write_text("Teste DSM. Conteúdo sobre testes unitários e E2E.")

    r = Retriever()
    r.build_index_if_needed(str(fp))
    results = r.retrieve("testes em DSM", top_k=1)
    assert isinstance(results, list)