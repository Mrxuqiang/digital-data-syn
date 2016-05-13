/*
================================================================================
��ṹ����:TB_SEREJ
��ṹ����:��Ʒ������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREJ;
drop index AK_TB_SEREJ;
drop table TB_SEREJ;
create table TB_SEREJ  (
   SEREJ_ID             INTEGER                         not null,  /*������ϸID                */
   SEREJ001             VARCHAR2(30)                    not null,  /*������;������6λ+6λ��ˮ  */
   SEREJ002             INTEGER                         not null,  /*����ID                    */
   SEREJ003             VARCHAR2(1)                     not null,  /*ҵ������ 1.��� 2.��� 3.���� 4.���� 5.�ջ�    */
   SEREJ004             INTEGER                         not null,  /*����ID                    */
   SEREJ005             INTEGER                         not null,  /*������ϸID                */
   SEREJ006             INTEGER                         not null,  /*��ƷID                    */
   SEREJ007             NUMBER(18,3)                    not null,  /*��������                  */
   SEREJ008             NUMBER(12,2)                    not null,  /*���ν���                  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_SEREJ primary key (SEREJ_ID)
);
create unique index AK_TB_SEREJ on TB_SEREJ (SEREJ001);
create sequence SEQ_TB_SEREJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREJ to public;
grant index  on TB_SEREJ to public;
grant update on TB_SEREJ to public; 
grant delete on TB_SEREJ to public;  
grant insert on TB_SEREJ to public; 
grant select on SEQ_TB_SEREJ to public;   