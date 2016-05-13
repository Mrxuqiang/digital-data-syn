/*CREATE BY SUNDAN
================================================================================
��ṹ����:TB_PUBBU
��ṹ����:�̻����ʳ�쵥��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBU;
drop index AK_TB_PUBBU;
drop table TB_PUBBU;
create table TB_PUBBU  (
		
 
   PUBBU_ID             INTEGER                         not null,  /*�̻����ʳ�쵥ID         */
   PUBBU001             INTEGER                         not null,  /*¥��ID             */
   PUBBU002             INTEGER                         not null,  /*Ʒ��         */
   PUBBU003             INTEGER				not null,  /*Ʒ��           */
   PUBBU004             VARCHAR2(1)                     not null,  /*�Ϲ���      0.�Ϲ� 1.���Ϲ�       */

   /*-----------------------------------�̻�����----------------------------------------------------*/
   PUBBU005             INTEGER				        ,  /*�̻�������Ȩ��ID       */
   PUBBU006             VARCHAR2(1),                               /*�̻�������Ȩ������         */
   PUBBU007             VARCHAR2(255),                             /*�̻�������Ȩ��ͼƬ·��         */
   PUBBU008             DATE,                                      /*��ֹ���ڣ��̻�������Ȩ�飩         */
   PUBBU009             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�������Ȩ�飩   0.�Ϲ� 1.���Ϲ�         */
   PUBBU010             VARCHAR2(255),                             /*��ע���̻�������Ȩ�飩         */

   PUBBU011             INTEGER				        ,  /*Ӫҵִ��ID���̻�����Ӫҵִ�գ�       */
   PUBBU012             VARCHAR2(1),                               /*�̻�����Ӫҵִ������         */
   PUBBU013             VARCHAR2(10),                              /*�̻�����Ӫҵִ�����         */
   PUBBU014             VARCHAR2(255),                              /*�̻�����Ӫҵִ��ͼƬ·��         */
   PUBBU015             DATE,                                      /*��ֹ���ڣ��̻�����Ӫҵִ�գ�         */
   PUBBU016             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�����Ӫҵִ�գ�   0.�Ϲ� 1.���Ϲ�         */
   PUBBU017             VARCHAR2(255),                             /*��ע���̻�����Ӫҵִ�գ�         */ 
   
   PUBBU018             INTEGER				        ,  /*�̻�����˰��Ǽ�֤ID       */
   PUBBU019             VARCHAR2(1),                               /*�̻�����˰��Ǽ�֤����         */
   PUBBU020             VARCHAR2(255),                             /*�̻�����˰��Ǽ�֤ͼƬ·��         */
   PUBBU021             DATE,                                      /*�̻�����˰��Ǽ�֤��Ч��         */
   PUBBU022             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�����˰��Ǽ�֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU023             VARCHAR2(255),                             /*��ע���̻�����˰��Ǽ�֤��         */    

   PUBBU024             INTEGER				        ,  /*�̻����ʸ��������֤ID       */
   PUBBU025             VARCHAR2(1),                               /*�̻����ʸ��������֤����         */
   PUBBU026             VARCHAR2(255),                             /*�̻����ʸ��������֤ͼƬ·��         */
   PUBBU027             DATE,                                      /*��ֹ���ڣ��̻����ʸ��������֤��         */
   PUBBU028             VARCHAR2(1),                               /*�Ϲ��ԣ��̻����ʸ��������֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU029             VARCHAR2(255),                             /*��ע���̻����ʸ��������֤��         */  
  /*--------------------------------------��������-----------------------------------------------------------------------*/
   PUBBU030             INTEGER				        ,  /*��������Ӫҵִ��ID       */
   PUBBU031             VARCHAR2(1),                               /*��������Ӫҵִ������         */
   PUBBU032             VARCHAR2(255),                             /*��������Ӫҵִ��ͼƬ·��         */
   PUBBU033             DATE,                                      /*��ֹ���ڣ���������Ӫҵִ�գ�         */
   PUBBU034             VARCHAR2(1),                               /*�Ϲ��ԣ���������Ӫҵִ�գ�   0.�Ϲ� 1.���Ϲ�         */
   PUBBU035             VARCHAR2(255),                             /*��ע����������Ӫҵִ�գ�         */  

   PUBBU036             INTEGER				        ,  /*��������˰��Ǽ�֤ID       */
   PUBBU037             VARCHAR2(1),                               /*��������˰��Ǽ�֤����         */
   PUBBU038             VARCHAR2(255),                             /*��������˰��Ǽ�֤ͼƬ·��         */
   PUBBU039             DATE,                                      /*��������˰��Ǽ�֤��Ч��         */
   PUBBU040             VARCHAR2(1),                               /*�Ϲ��ԣ���������˰��Ǽ�֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU041             VARCHAR2(255),                             /*��ע����������˰��Ǽ�֤��         */ 

   PUBBU042             INTEGER				        ,  /*����������֯��������֤ID       */
   PUBBU043             VARCHAR2(1),                               /*����������֯��������֤����         */
   PUBBU044             VARCHAR2(255),                             /*����������֯��������֤ͼƬ·��         */
   PUBBU045             DATE,                                      /*��ֹ���ڣ�����������֯��������֤��         */
   PUBBU046             VARCHAR2(1),                               /*�Ϲ��ԣ���������֯��������֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU047             VARCHAR2(255),                             /*��ע������������֯��������֤��         */ 

   PUBBU048             INTEGER				        ,  /*���������̱�ע��֤ID       */
   PUBBU049             VARCHAR2(1),                               /*���������̱�ע��֤����         */
   PUBBU050             VARCHAR2(255),                             /*���������̱�ע��֤ͼƬ·��         */
   PUBBU051             DATE,                                      /*��ֹ���ڣ����������̱�ע��֤��         */
   PUBBU052             VARCHAR2(1),                               /*�Ϲ��ԣ��������̱�ע��֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU053             VARCHAR2(255),                             /*��ע�����������̱�ע��֤��         */

   PUBBU054             INTEGER				        ,  /*�������ʼ�ⱨ��ID       */
   PUBBU055             VARCHAR2(1),                               /*�������ʼ�ⱨ������         */
   PUBBU056             VARCHAR2(255),                             /*�������ʼ�ⱨ��ͼƬ·��         */
   PUBBU057             DATE,                                      /*��ֹ���ڣ��������ʼ�ⱨ�棩         */
   PUBBU058             VARCHAR2(1),                               /*�Ϲ��ԣ������ʼ�ⱨ�棩   0.�Ϲ� 1.���Ϲ�         */
   PUBBU059             VARCHAR2(255),                             /*��ע���������ʼ�ⱨ�棩         */

   PUBBU060             INTEGER				        ,  /*�������ʼҾ����Ʒʹ��˵����ID       */
   PUBBU061             VARCHAR2(1),                               /*�������ʼҾ����Ʒʹ��˵��������         */
   PUBBU062             VARCHAR2(255),                             /*�������ʼҾ����Ʒʹ��˵����ͼƬ·��         */
   PUBBU063             DATE,                                      /*�������ʼҾ����Ʒʹ��˵������Ч��         */
   PUBBU064             VARCHAR2(1),                               /*�Ϲ��ԣ��������ʼҾ����Ʒʹ��˵���飩   0.�Ϲ� 1.���Ϲ�         */
   PUBBU065             VARCHAR2(255),                             /*��ע���������ʼҾ����Ʒʹ��˵���飩         */

   PUBBU066             INTEGER				        ,  /*��������3C��֤��ID       */
   PUBBU067             VARCHAR2(1),                               /*��������3C��֤������         */
   PUBBU068             VARCHAR2(255),                             /*��������3C��֤��ͼƬ·��         */
   PUBBU069             DATE,                                      /*��ֹ���ڣ��ض�����3C��֤�飩         */
   PUBBU070             VARCHAR2(1),                               /*�Ϲ��ԣ��ض�����3C��֤�飩   0.�Ϲ� 1.���Ϲ�         */
   PUBBU071             VARCHAR2(255),                             /*��ע���ض�����3C��֤�飩         */

   PUBBU072             INTEGER				        ,  /*�������ʽ��ڱ��ؿ�ID       */
   PUBBU073             VARCHAR2(1),                               /*�������ʽ��ڱ��ؿ�����         */
   PUBBU074             VARCHAR2(255),                             /*�������ʽ��ڱ��ؿ�ͼƬ·��         */
   PUBBU075             DATE,                                      /*�������ʽ��ڱ��ؿ���Ч��         */
   PUBBU076             VARCHAR2(1),                               /*�Ϲ��ԣ��ض����ʽ��ڱ��ؿ���   0.�Ϲ� 1.���Ϲ�         */
   PUBBU077             VARCHAR2(255),                             /*��ע���ض����ʽ��ڱ��ؿ���         */

   PUBBU078             INTEGER				        ,  /*������������ID       */
   PUBBU079             VARCHAR2(1),                               /*��������|����|����        */
   PUBBU080             VARCHAR2(255),                             /*��������|����|ͼƬ·��         */
   PUBBU081             VARCHAR2(80),                              /*��������|����|����        */
   PUBBU083             DATE,                                      /*��������|����|��ֹ����       */
   PUBBU084             VARCHAR2(1),                               /*��������|����|�Ϲ���   0.�Ϲ� 1.���Ϲ�         */
   PUBBU085             VARCHAR2(255),                             /*��������|����|��ע         */
   PUBBU086             VARCHAR2(255),                             /*��ע        */

   PUBBU087             DATE,                                      /*��������         */
   PUBBU088             INTEGER				not null,  /*Ӫ����֯id          */
   PUBBU089             INTEGER				not null,  /*�̻���������ID          */
   PUBBU090             INTEGER				not null,  /*������������ID          */
   PUBBU091             INTEGER				not null,  /*ϵ��ID          */
   PUBBU092             VARCHAR2(100),                             /*ϵ�б���         */
   PUBBU093             VARCHAR2(120),                             /*ϵ������         */

 /*----------------------------------�̻�����-----------------------------------------------------------*/
  /* ��Ʒ˵����*/
   PUBBU094             INTEGER				        ,  /*�̻����ʲ�Ʒ˵����ID       */
   PUBBU095             VARCHAR2(1),                               /*�̻����ʲ�Ʒ˵��������         */
   PUBBU096             VARCHAR2(255),                             /*�̻����ʲ�Ʒ˵����ͼƬ·��         */
   PUBBU097             DATE,                                      /*��ֹ���ڣ��̻����ʲ�Ʒ˵���飩         */
   PUBBU098             VARCHAR2(1),                               /*�Ϲ��ԣ��̻����ʲ�Ʒ˵���飩   0.�Ϲ� 1.���Ϲ�         */
   PUBBU099             VARCHAR2(255),                             /*��ע���̻����ʲ�Ʒ˵���飩         */ 

 /* ��Ʒ�ϸ�֤*/
   PUBBU100             INTEGER				        ,  /*�̻����ʲ�Ʒ�ϸ�֤ID       */
   PUBBU101             VARCHAR2(1),                               /*�̻����ʲ�Ʒ�ϸ�֤����         */
   PUBBU102             VARCHAR2(255),                             /*�̻����ʲ�Ʒ�ϸ�֤ͼƬ·��         */
   PUBBU103             DATE,                                      /*��ֹ���ڣ��̻����ʲ�Ʒ�ϸ�֤��         */
   PUBBU104             VARCHAR2(1),                               /*�Ϲ��ԣ��̻����ʲ�Ʒ�ϸ�֤��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU105             VARCHAR2(255),                             /*��ע���̻����ʲ�Ʒ�ϸ�֤��         */ 

    /*3C*/
   PUBBU106             INTEGER				        ,  /*�̻�����3CID       */
   PUBBU107             VARCHAR2(1),                               /*�̻�����3C����         */
   PUBBU108             VARCHAR2(255),                             /*�̻�����3CͼƬ·��         */
   PUBBU109             DATE,                                      /*��ֹ���ڣ��̻�����3C��         */
   PUBBU110             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�����3C��   0.�Ϲ� 1.���Ϲ�         */
   PUBBU111             VARCHAR2(255),                             /*��ע���̻�����3C��         */ 

   /*���ص�*/
   PUBBU112             INTEGER				        ,  /*�̻����ʱ��ص�ID       */
   PUBBU113             VARCHAR2(1),                               /*�̻����ʱ��ص�����         */
   PUBBU114             VARCHAR2(255),                             /*�̻����ʱ��ص�ͼƬ·��         */
   PUBBU115             DATE,                                      /*��ֹ���ڣ��̻����ʱ��ص���         */
   PUBBU116             VARCHAR2(1),                               /*�Ϲ��ԣ��̻����ʱ��ص���   0.�Ϲ� 1.���Ϲ�         */
   PUBBU117             VARCHAR2(255),                             /*��ע���̻����ʱ��ص���         */ 

   /*������ʾ��*/
   PUBBU118             INTEGER				        ,  /*�̻�����������ʾ��ID       */
   PUBBU119             VARCHAR2(1),                               /*�̻�����������ʾ������         */
   PUBBU120             VARCHAR2(255),                             /*�̻�����������ʾ��ͼƬ·��         */
   PUBBU121             DATE,                                      /*��ֹ���ڣ��̻�����������ʾ����         */
   PUBBU122             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�����������ʾ����   0.�Ϲ� 1.���Ϲ�         */
   PUBBU123             VARCHAR2(255),                             /*��ע���̻�����������ʾ����         */ 

   /*����֤��*/
   PUBBU124             INTEGER				        ,  /*�̻����ʻ���֤��      */
   PUBBU125             VARCHAR2(1),                               /*�̻����ʻ���֤������         */
   PUBBU126             VARCHAR2(255),                             /*�̻����ʻ���֤��ͼƬ·��         */
   PUBBU127             DATE,                                      /*��ֹ���ڣ��̻����ʻ���֤����         */
   PUBBU128             VARCHAR2(1),                               /*�Ϲ��ԣ��̻����ʻ���֤����   0.�Ϲ� 1.���Ϲ�         */
   PUBBU129             VARCHAR2(255),                             /*��ע���̻����ʻ���֤����         */ 

   /*����*/
   PUBBU130             INTEGER				        ,  /*�̻���������       */
   PUBBU131             VARCHAR2(1),                               /*�̻�������������         */
   PUBBU132             VARCHAR2(255),                             /*�̻���������ͼƬ·��         */
   PUBBU133             DATE,                                      /*��ֹ���ڣ��̻�����������         */
   PUBBU134             VARCHAR2(1),                               /*�Ϲ��ԣ��̻�����������   0.�Ϲ� 1.���Ϲ�         */
   PUBBU135             VARCHAR2(255),                             /*��ע���̻�����������         */ 

   /*----------------------------------��������----------------------------------------------------------*/
   /*����*/
   PUBBU136             INTEGER				        ,  /*������������(��PUBBU078�ظ�)       */
   PUBBU137             VARCHAR2(1),                               /*���������������ͣ���PUBBU079�ظ���         */
   PUBBU138             VARCHAR2(255),                             /*������������ͼƬ·������PUBBU080�ظ���         */
   PUBBU139             DATE,                                      /*��ֹ���ڣ�������������������PUBBU081�ظ���          */
   PUBBU140             VARCHAR2(1),                               /*�Ϲ��ԣ���������������   0.�Ϲ� 1.���Ϲ�  ����PUBBU082�ظ���       */
   PUBBU141             VARCHAR2(255),                             /*��ע���������������� ����PUBBU083�ظ���        */ 

   PUBBU142              VARCHAR2(255),                             /*�̻�����|����|������ע      */ 
   PUBBU143              VARCHAR2(255),                             /*��������|����|������ע      */ 

   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBU primary key (PUBBU_ID)
);
create unique index AK_TB_PUBBU on TB_PUBBU (PUBBU_ID,PUBBU003);
create sequence SEQ_TB_PUBBU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBU to public;
grant index  on TB_PUBBU to public;
grant update on TB_PUBBU to public; 
grant delete on TB_PUBBU to public;  
grant insert on TB_PUBBU to public; 
grant select on SEQ_TB_PUBBU to public;   