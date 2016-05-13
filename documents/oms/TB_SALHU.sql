/*
================================================================================
��ṹ����:TB_SALHU
��ṹ����:�ŵ�ҵ����̯��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHU;
drop index AK_TB_SALHU;
drop table TB_SALHU;
create table TB_SALHU  (
   SALHU_ID             INTEGER                         not null,  /*�ŵ�ҵ����̯ID     */
   SALHU001             INTEGER                         not null,  /*���۵�ID           */ 
   SALHU002             NUMBER(18,3)                    not null,  /*���˻����         */ 
   SALHU003             NUMBER(18,3)                    not null,  /*��ҵ��             */
   SALHU004             DATE                            not null,  /*�������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SALHU primary key (SALHU_ID)
);
create unique index AK_TB_SALHU on TB_SALHU (SALHU_ID,SALHU001,FLAG);
create sequence SEQ_TB_SALHU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHU to public;
grant index  on TB_SALHU to public;
grant update on TB_SALHU to public; 
grant delete on TB_SALHU to public;  
grant insert on TB_SALHU to public; 
grant select on SEQ_TB_SALHU to public;   