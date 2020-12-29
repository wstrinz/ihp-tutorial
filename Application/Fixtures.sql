

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('eed3bb7c-9c83-4834-b528-e36281fb1509', 'Wow', 'Blog in ten', '2020-12-29 11:26:35.523069-06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('53f52b97-20a4-43f6-9156-d7cf65572326', 'another', 'for testing', '2020-12-29 11:27:44.583662-06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('98dad28d-7b8a-495d-ad45-f86e4a538c57', 'Title', '## Ooh markdown', '2020-12-29 11:49:52.583791-06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('c64c8f63-4be2-42dc-b675-6074bc56eb4b', 'Another post', '## Multiline strings

And [links](http://example.com)', '2020-12-29 11:53:37.314218-06');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('08745c70-552e-47f0-b85f-caeb375d85d6', 'c64c8f63-4be2-42dc-b675-6074bc56eb4b', 'Someone', 'This is a good poast');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


