/*
================================================================================
��ṹ����:TB_SYSGA
��ṹ����:�ӿڹ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSGA;
drop index AK_TB_SYSGA;
drop table TB_SYSGA;
create table TB_SYSGA  (
   SYSGA_ID             INTEGER                         not null,  /*�ӿڹ���ID       */
   SYSGA001             VARCHAR2(4)                     not null,  /*�ӿڹ������     */
   SYSGA002             VARCHAR2(30)                    not null,  /*�ӿڹ�������     */
   SYSGA003             VARCHAR2(255)                   not null,  /*�ӿڹ���˵��     */
   SYSGA004             VARCHAR2(2)                     not null,  /*��Դ��������     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSGA primary key (SYSGA_ID)
);
create unique index AK_TB_SYSGA on TB_SYSGA (SYSGA001);
create sequence SEQ_TB_SYSGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGA to public;
grant index  on TB_SYSGA to public;
grant update on TB_SYSGA to public; 
grant delete on TB_SYSGA to public;  
grant insert on TB_SYSGA to public; 
grant select on SEQ_TB_SYSGA to public;   