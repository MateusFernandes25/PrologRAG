from setuptools import setup, find_packages

setup(
    name="PrologRAG",
    version="0.1.0",
    author="Mateus Fernandes",
    description="PrologRAG is an innovative framework that leverages the concept of Retrieval-Augmented Generation (RAG) to organize and answer queries about documents in Prolog format. This project extracts knowledge from documents, transforms it into structured Prolog code, and provides accurate and contextual answers to questions.",
    packages=find_packages(),
    install_requires=["pyswip", "langchain_core","langchain_openai","langchain","langchain-community","pypdf"],
    python_requires=">=3.8",
)
