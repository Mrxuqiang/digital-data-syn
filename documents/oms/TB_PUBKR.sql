/*
================================================================================
��ṹ����:TB_PUBKR
��ṹ����:�ŵ��տʽ��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBKR;
drop index AK_TB_PUBKR;
drop table TB_PUBKR;
create table TB_PUBKR  (
   PUBKR_ID             INTEGER                         not null,  /*�ŵ��տʽid     */
   PUBKR001             VARCHAR2(4)                     not null,  /*�̳�id             */
   PUBKR002             VARCHAR2(30)                    not null,  /*�տʽid         */ 
   PUBKR003             INTEGER                         not null,  /*���               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBKR primary key (PUBKR_ID)
);
create unique index AK_TB_PUBKR on TB_PUBKR (PUBKR001,PUBKR002,FLAG);
create sequence SEQ_TB_PUBKR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKR to public;
grant index  on TB_PUBKR to public;
grant update on TB_PUBKR to public; 
grant delete on TB_PUBKR to public;  
grant insert on TB_PUBKR to public; 
grant select on SEQ_TB_PUBKR to public;   