/*
================================================================================
��ṹ����:TB_GLDAM
��ṹ����:����������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAM;
drop index AK_TB_GLDAM;
drop table TB_GLDAM;
create table TB_GLDAM  (
   GLDAM_ID             INTEGER                         not null,  /*����������ID         */
   GLDAM001             VARCHAR2(4)                     not null,  /*����                 */
   GLDAM002             VARCHAR2(30)                    not null,  /*����                 */
   GLDAM003             VARCHAR2(255),                             /*��ע                 */
   GLDAM004             VARCHAR2(1)                     not null,  /*���ϼƷ���         */
   GLDAM005             VARCHAR2(1)                     not null,  /*Ӧ�÷�Χ             */
   GLDAM006             VARCHAR2(1)                     not null,  /*��ʾ�ϼ���           */
   GLDAM007             VARCHAR2(1)                     not null,  /*��ʾ�ϼ���           */
   GLDAM008             INTEGER ,                                  /*��ԱID           */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_GLDAM primary key (GLDAM_ID)
);
create unique index AK_TB_GLDAM on TB_GLDAM (GLDAM001);
create sequence SEQ_TB_GLDAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAM to public;
grant index  on TB_GLDAM to public;
grant update on TB_GLDAM to public; 
grant delete on TB_GLDAM to public;  
grant insert on TB_GLDAM to public; 
grant select on SEQ_TB_GLDAM to public; 