CREATE TRIGGER `TG_vagasdeletas` BEFORE DELETE ON `vagas`
 FOR EACH ROW INSERT INTO vagas_logs(`id`,`nome_vaga`,`acao`)
VALUES (OLD.`id`,OLD.`nome_vaga`, 'Excluida')