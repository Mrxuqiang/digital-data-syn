/*
================================================================================
��ṹ����:TB_SERAF
��ṹ����:����ƾ֤�ջص��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAF;
drop index AK_TB_SERAF;
drop table TB_SERAF;
create table TB_SERAF  (
   SERAF_ID             INTEGER                         not null,  /*����ƾ֤�ջص���ϸID */
   SERAF001             INTEGER                         not null,  /*����ƾ֤�ջص�ID     */
   SERAF002             INTEGER                         not null,  /*ƾ֤����ID           */
   SERAF003             NUMBER(12)                      not null,  /*��ʼ����             */
   SERAF004             NUMBER(12)                      not null,  /*��������             */
   SERAF005             NUMBER(12)                      not null,  /*����                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SERAF primary key (SERAF_ID)
);
create unique index AK_TB_SERAF on TB_SERAF (SERAF001,SERAF002,SERAF003);
create sequence SEQ_TB_SERAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAF to public;
grant index  on TB_SERAF to public;
grant update on TB_SERAF to public; 
grant delete on TB_SERAF to public;  
grant insert on TB_SERAF to public; 
grant select on SEQ_TB_SERAF to public;   