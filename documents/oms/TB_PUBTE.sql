/*
================================================================================
��ṹ����:TB_PUBTE 
��ṹ����:�ض����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBTE;
drop index AK_TB_PUBTE;
drop table TTB_PUBTE;
create table TB_PUBTE  (
   PUBTE_ID             INTEGER                         not null,  /*�ض�����ID         */
   PUBTE001             VARCHAR2(30)                    not null,  /*�ض����ӱ��       */
   PUBTE002             VARCHAR2(30)                    not null,  /*�ض���������       */
   PUBTE003             INTEGER                         not null,  /*�ض����Է���ID     */
   PUBTE004             VARCHAR2(255)                              /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBTE primary key (PUBTE_ID)
);
create unique index AK_TB_PUBTE on TB_PUBTE (PUBTE001,FLAG);
create sequence SEQ_TB_PUBTE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTE to public;
grant index  on TB_PUBTE to public;
grant update on TB_PUBTE to public; 
grant delete on TB_PUBTE to public;  
grant insert on TB_PUBTE to public; 
grant select on SEQ_TB_PUBTE to public;   