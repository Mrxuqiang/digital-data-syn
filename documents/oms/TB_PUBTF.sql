/*
================================================================================
��ṹ����:TB_PUBTF 
��ṹ����:��Ʒ�ض����Է������ñ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBTF;
drop index AK_TB_PUBTF;
drop table TB_PUBTF;
create table TB_PUBTF  (
   PUBTF_ID             INTEGER                         not null,  /*��Ʒ�ض����Է�������ID   */
   PUBTF001             INTEGER                         not null,  /*��ƷID             */
   PUBTF002             INTEGER                         not null,  /*�ض����Է���ID     */
   PUBTF003             VARCHAR2(255)                              /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBTF primary key (PUBTF_ID)
);
create unique index AK_TB_PUBTF on TB_PUBTF (PUBTF001,PUBTF002,FLAG);
create sequence SEQ_TB_PUBTF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTF to public;
grant index  on TB_PUBTF to public;
grant update on TB_PUBTF to public; 
grant delete on TB_PUBTF to public;  
grant insert on TB_PUBTF to public; 
grant select on SEQ_TB_PUBTF to public;   