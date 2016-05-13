/*
================================================================================
��ṹ����:TB_SUPBI
��ṹ����:HINT��ʾ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBI;
drop index AK_TB_SUPBI;
drop table TB_SUPBI;
create table TB_SUPBI  (
   SUPBI001             VARCHAR2(30)                    not null,  /*ͼֽ���                          */
   SUPBI002             VARCHAR2(20)                    not null,  /*̯λ���                          */
   SUPBI003             VARCHAR2(50)                    not null,  /*��ʾ��                            */
   SUPBI004             VARCHAR2(800),                             /*ֵ                                */
   SUPBI005             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬1��                 */
   SUPBI006             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬2��                 */
   SUPBI007             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬3��                 */
   SUPBI008             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬4��                 */
   SUPBI009             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬5��                 */
   SUPBI010             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬6��                 */
   SUPBI011             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬7��                 */
   SUPBI012             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬8��                 */
   SUPBI013             NUMBER(1)                       not null,  /*�Ƿ���ʾ��״̬9��                 */
   constraint PK_TB_SUPBI primary key (SUPBI001,SUPBI002,SUPBI003)
);
/*create unique index AK_TB_SUPBI on TB_SUPBI (SUPBI001,SUPBI002,SUPBI003);*/
create sequence SEQ_TB_SUPBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBI to public;
grant index  on TB_SUPBI to public;
grant update on TB_SUPBI to public; 
grant delete on TB_SUPBI to public;  
grant insert on TB_SUPBI to public; 
grant select on SEQ_TB_SUPBI to public;   
