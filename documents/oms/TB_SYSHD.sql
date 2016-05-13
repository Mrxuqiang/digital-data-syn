/*
================================================================================
��ṹ����:TB_SYSHD
��ṹ����:���ݷ���Ȩ������ҵ��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SYSHD;
drop index AK_TB_SYSHD;
drop table TB_SYSHD;
create table TB_SYSHD  (
   SYSHD_ID             INTEGER                         not null,  /*����Ȩ������ҵID */
   SYSHD001             INTEGER                         not null,  /*����Ȩ����ID     */
   SYSHD002             INTEGER                         not null,  /*��ҵID����׼�˵�ID��*/
   SYSHD003             VARCHAR2(255),				                     /*Ԥ��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                 /*����״̬         */
   constraint PK_TB_SYSHD primary key (SYSHD_ID)
);
create sequence SEQ_TB_SYSHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHD to public;
grant index  on TB_SYSHD to public;
grant update on TB_SYSHD to public; 
grant delete on TB_SYSHD to public;  
grant insert on TB_SYSHD to public; 
grant select on SEQ_TB_SYSHD to public;   