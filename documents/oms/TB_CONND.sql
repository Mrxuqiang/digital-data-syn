/*
================================================================================
��ṹ����:TB_CONND
��ṹ����:Ʒ��Э��������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONND;
drop index AK_TB_CONND;
drop table TB_CONND;
create table TB_CONND  (
   CONND_ID             INTEGER                         not null,  /*Ʒ��Э�������ϸID          */
   CONND001             INTEGER                         not null,  /*Ʒ��Э�����ID              */
   CONND002             VARCHAR(1),                                /*��Ч                        */  
   CONND003             INTEGER                         not null,  /*��ƷID                      */
   CONND004             NUMBER(18,3),                              /*��Ͳɹ���                  */
   CONND005             INTEGER,                                   /*��С�ɹ���λ                */
   CONND006             NUMBER(18,3),                              /*�ɹ���                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_CONND primary key (CONND_ID)
);
create unique index AK_TB_CONND on TB_CONND (CONND001,CONND003);
create sequence SEQ_TB_CONND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONND to public;
grant index  on TB_CONND to public;
grant update on TB_CONND to public; 
grant delete on TB_CONND to public;  
grant insert on TB_CONND to public; 
grant select on SEQ_TB_CONND to public;   


